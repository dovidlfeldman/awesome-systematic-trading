#!/usr/bin/env bash
# Append a one-line run status to a TRACKED file and push it.
#
# Why this exists: automation/logs/ is gitignored and ~/TradingVaultMirror is not tracked
# at all, so a checker that only has the git remote (a cloud agent, another machine) can
# see neither the run log nor the mirror. This file is the one piece of run evidence that
# reaches the remote.
#
# Usage: record-status.sh <cycle|check> <claude_status> <mirror_status> [note_status]
#        claude/mirror status is the literal string "ok" or "FAILED".
#        note_status is "ok" (agent wrote its run note), "stub" (ensure-run-note.sh had to
#        write one in its place), "ERROR", or "unknown" when the caller omits it.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
KIND="${1:?usage: record-status.sh <cycle|check> <claude_status> <mirror_status>}"
RUN="${2:?missing claude status}"
MIRROR="${3:?missing mirror status}"
NOTE="${4:-unknown}"
STATUS_FILE="$REPO_DIR/automation/run-status.tsv"

cd "$REPO_DIR"

MIRROR_DIR="${OBSIDIAN_TRADING_DIR:-$HOME/TradingVaultMirror}"
REPO_MD=$(find trading-vault -name '*.md' -not -path '*/.obsidian/*' | wc -l | tr -d ' ')
MIRROR_MD=$(find "$MIRROR_DIR" -name '*.md' 2>/dev/null | wc -l | tr -d ' ')

# HEAD here is the run's own commit (claude -p pushes before this runs), so the line
# points at what the run produced.
printf '%s\t%s\tclaude=%s\tmirror=%s\tnote=%s\tmd_repo=%s\tmd_mirror=%s\tcommit=%s\n' \
  "$(date -u +%FT%TZ)" "$KIND" "$RUN" "$MIRROR" "$NOTE" "$REPO_MD" "$MIRROR_MD" \
  "$(git rev-parse --short HEAD)" >>"$STATUS_FILE"

git add "$STATUS_FILE"
git commit -q -m "Run status: $KIND claude=$RUN mirror=$MIRROR note=$NOTE ($REPO_MD/$MIRROR_MD md)"
git push -q origin "$(git rev-parse --abbrev-ref HEAD)"

echo "Recorded status -> automation/run-status.tsv (claude=$RUN mirror=$MIRROR note=$NOTE, $REPO_MD/$MIRROR_MD md)"
