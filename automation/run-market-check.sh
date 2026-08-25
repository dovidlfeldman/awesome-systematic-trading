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
claude -p "$(cat "$REPO_DIR/automation/market-check-prompt.md")" \
  --permission-mode acceptEdits \
  >>"$LOG_FILE" 2>&1

# Mirror any new/updated trade notes into the owner's personal Obsidian vault.
"$REPO_DIR/automation/mirror-trades.sh" >>"$LOG_FILE" 2>&1 || true

echo "Market check finished $(date -u +%FT%TZ)" >>"$LOG_FILE"
