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

# One ET timestamp for the whole run: the agent names its run note with this prefix, and
# ensure-run-note.sh looks for that same prefix afterwards. Computing it once is what keeps
# the two in agreement.
RUN_DATE="$(TZ=America/New_York date +%F)"
RUN_SLOT="$(TZ=America/New_York date +%H%M)"
NOTE_PREFIX="$RUN_DATE $RUN_SLOT Check"

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
RUN_CONTEXT="
---

## This run (injected by the runner — authoritative, overrides any date you infer)

- Run kind: **intraday market check (risk exits only)**
- Date (ET): **$RUN_DATE**
- Slot (ET): **$RUN_SLOT**
- **Required run note.** Create exactly one file whose name starts with
  \`trading-vault/Trades/$NOTE_PREFIX\` and ends in \`.md\`, appending a short outcome to that
  prefix (e.g. \`trading-vault/Trades/$NOTE_PREFIX — No Action.md\`). Write it even if nothing
  traded, and even if you skip this run. If you do not, the runner writes a failure stub in
  its place.
"

if claude -p "$(cat "$REPO_DIR/automation/market-check-prompt.md")$RUN_CONTEXT" \
  --permission-mode acceptEdits \
  >>"$LOG_FILE" 2>&1; then RUN=ok; else RUN=FAILED; fi

# Guarantee a run note exists in trading-vault/Trades/ before we mirror, so the Obsidian
# vault shows one entry per run even when the agent died without writing one. Exit 10 means
# it had to write a stub; that is evidence, not a run failure, so it must not trip set -e.
set +e
"$REPO_DIR/automation/ensure-run-note.sh" check "$RUN_DATE" "$RUN_SLOT" "$RUN" "$LOG_FILE" >>"$LOG_FILE" 2>&1
case $? in 0) NOTE=ok ;; 10) NOTE=stub ;; *) NOTE=ERROR ;; esac
set -e

# Mirror the vault into the owner's personal Obsidian vault. Still fatal (see the exit
# below) — captured only so the failure reaches the tracked status file first.
if "$REPO_DIR/automation/mirror-trades.sh" >>"$LOG_FILE" 2>&1; then MIRROR=ok; else MIRROR=FAILED; fi

# One line of run evidence to a TRACKED file. `|| true` here is deliberate and is NOT
# the guard we removed: recording evidence must never itself fail the run, and it
# cannot mask anything, since the real verdict is enforced immediately below.
"$REPO_DIR/automation/record-status.sh" check "$RUN" "$MIRROR" "$NOTE" >>"$LOG_FILE" 2>&1 \
  || echo "WARNING: could not record run status" >>"$LOG_FILE"

if [ "$RUN" != ok ] || [ "$MIRROR" != ok ]; then
  echo "FAILED (claude=$RUN mirror=$MIRROR note=$NOTE) — no trailer written." >>"$LOG_FILE"
  exit 1
fi

echo "Market check finished $(date -u +%FT%TZ)" >>"$LOG_FILE"
