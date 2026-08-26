#!/usr/bin/env bash
# Intraday risk check runner — invoke Claude Code headlessly with the market-check prompt.
# Scheduled at 12:30 PM and 3:45 PM ET on weekdays. Risk exits only (see market-check-prompt.md):
# it may sell to protect the book, but never buys or rotates.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_DIR="$REPO_DIR/automation/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/check-$(date +%Y-%m-%d-%H%M).log"

cd "$REPO_DIR"

# Refuse to run on weekends (launchd guards this too; belt and suspenders).
case "$(TZ=America/New_York date +%u)" in
  6|7) echo "Weekend — skipping." | tee -a "$LOG_FILE"; exit 0 ;;
esac

# Pull latest vault state so parallel edits are not clobbered.
git pull --rebase --autostash origin "$(git rev-parse --abbrev-ref HEAD)" >>"$LOG_FILE" 2>&1 || true

# Headless Claude Code run. acceptEdits covers file edits; MCP tool permissions come from
# .claude/settings.json.
# Capture the status instead of letting set -e kill the script here: a failed run
# must still be RECORDED to the tracked status file before we exit non-zero.
if claude -p "$(cat "$REPO_DIR/automation/market-check-prompt.md")" \
  --permission-mode acceptEdits \
  >>"$LOG_FILE" 2>&1; then RUN=ok; else RUN=FAILED; fi

# Mirror the vault into the owner's personal Obsidian vault. Still fatal (see the exit
# below) — captured only so the failure reaches the tracked status file first.
if "$REPO_DIR/automation/mirror-trades.sh" >>"$LOG_FILE" 2>&1; then MIRROR=ok; else MIRROR=FAILED; fi

# One line of run evidence to a TRACKED file. `|| true` here is deliberate and is NOT
# the guard we removed: recording evidence must never itself fail the run, and it
# cannot mask anything, since the real verdict is enforced immediately below.
"$REPO_DIR/automation/record-status.sh" check "$RUN" "$MIRROR" >>"$LOG_FILE" 2>&1 \
  || echo "WARNING: could not record run status" >>"$LOG_FILE"

if [ "$RUN" != ok ] || [ "$MIRROR" != ok ]; then
  echo "FAILED (claude=$RUN mirror=$MIRROR) — no trailer written." >>"$LOG_FILE"
  exit 1
fi

echo "Market check finished $(date -u +%FT%TZ)" >>"$LOG_FILE"
