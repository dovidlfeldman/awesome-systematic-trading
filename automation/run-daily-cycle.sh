#!/usr/bin/env bash
# Daily v3 trading cycle runner — invoke Claude Code headlessly with the canonical prompt.
# Intended to be called by cron/launchd/Task Scheduler on weekday mornings (9:35+ AM ET).
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
LOG_DIR="$REPO_DIR/automation/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/cycle-$(date +%Y-%m-%d).log"

cd "$REPO_DIR"

# Refuse to run on weekends (cron guards this too; belt and suspenders).
case "$(TZ=America/New_York date +%u)" in
  6|7) echo "Weekend — skipping." | tee -a "$LOG_FILE"; exit 0 ;;
esac

# Pull latest vault state so parallel edits (e.g. from claude.ai sessions) are not clobbered.
git pull --rebase --autostash origin "$(git rev-parse --abbrev-ref HEAD)" >>"$LOG_FILE" 2>&1 || true

# Headless Claude Code run. --permission-mode acceptEdits covers file edits; MCP tool
# permissions come from .claude/settings.json (see automation/README.md).
claude -p "$(cat "$REPO_DIR/automation/daily-cycle-prompt.md")" \
  --permission-mode acceptEdits \
  >>"$LOG_FILE" 2>&1

# Mirror the vault into the owner's personal Obsidian vault. No `|| true`: a failed mirror
# must kill the run before the trailer line, so the liveness audit catches it (see README).
"$REPO_DIR/automation/mirror-trades.sh" >>"$LOG_FILE" 2>&1

echo "Cycle finished $(date -u +%FT%TZ)" >>"$LOG_FILE"
