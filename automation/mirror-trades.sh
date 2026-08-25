#!/usr/bin/env bash
# Mirror trade notes from the git-tracked repo vault into the owner's personal Obsidian vault.
# One-way: repo (source of truth) -> personal vault. Safe to run after every cycle/check.
# Called by run-daily-cycle.sh and run-market-check.sh; also runnable standalone.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_DIR/trading-vault/Trades/"
DEST="${OBSIDIAN_TRADING_DIR:-$HOME/Documents/Obsidian Vault/Trading}"

mkdir -p "$DEST"

# One-way copy of the markdown trade notes. No --delete: we never remove notes the owner
# may have annotated in their vault; the repo only adds/updates.
if command -v rsync >/dev/null 2>&1; then
  rsync -a --include='*/' --include='*.md' --exclude='*' "$SRC" "$DEST/"
else
  # Fallback if rsync is unavailable.
  find "$SRC" -name '*.md' -exec cp -p {} "$DEST/" \;
fi

echo "Mirrored trade notes -> $DEST"
