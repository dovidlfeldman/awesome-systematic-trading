#!/usr/bin/env bash
# Mirror the trading vault from the git-tracked repo into the owner's personal Obsidian vault.
# One-way: repo (source of truth) -> personal vault. Safe to run after every cycle/check.
# Called by run-daily-cycle.sh and run-market-check.sh; also runnable standalone.
#
# Copies the whole vault (00 - Home.md, Trades/, Signals/, Checks/, Journal/, Strategy/),
# preserving directory structure. The repo vault's own .obsidian/ config is skipped — the
# personal vault has its own.
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$REPO_DIR/trading-vault/"
# Default destination lives OUTSIDE ~/Documents on purpose: ~/Documents is TCC-protected and
# launchd-spawned processes cannot write there (see README). ~/Documents/Obsidian Vault/Trading
# is a symlink to this path, so Obsidian still sees the notes in the vault.
DEST="${OBSIDIAN_TRADING_DIR:-$HOME/TradingVaultMirror}"

mkdir -p "$DEST"

# One-way copy of the markdown notes. No --delete: we never remove notes the owner
# may have annotated in their vault; the repo only adds/updates.
if command -v rsync >/dev/null 2>&1; then
  rsync -am \
    --exclude='.obsidian/' \
    --include='*/' --include='*.md' --exclude='*' \
    "$SRC" "$DEST/"
else
  # Fallback if rsync is unavailable. Mirrors the same structure.
  (cd "$SRC" && find . -name '*.md' -not -path './.obsidian/*' -print0) |
    while IFS= read -r -d '' f; do
      mkdir -p "$DEST/$(dirname "$f")"
      cp -p "$SRC/$f" "$DEST/$f"
    done
fi

echo "Mirrored vault -> $DEST"
