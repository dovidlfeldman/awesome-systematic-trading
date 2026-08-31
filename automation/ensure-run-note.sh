#!/usr/bin/env bash
# Guarantee that every scheduled run leaves exactly one note in trading-vault/Trades/.
#
# Why this exists: the run note is written by the headless Claude run, so a run that dies
# early — bad auth, MCP outage, crash — would leave no note at all. That is the one failure
# mode this whole ledger is meant to make visible: a quiet day and a missed day must never
# look the same in Trades/. If Claude did not write the note, this writes a stub in its place
# recording that the run fired and what happened to it.
#
# Usage: ensure-run-note.sh <cycle|check> <YYYY-MM-DD> <HHMM> <ok|FAILED> <log_file>
# Exit:  0  Claude wrote the note (nothing to do)
#        10 no note found — a stub was written
#        1  arguments or filesystem error
set -euo pipefail
shopt -s nullglob

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
KIND="${1:?usage: ensure-run-note.sh <cycle|check> <date> <slot> <run_status> <log_file>}"
RUN_DATE="${2:?missing date}"
RUN_SLOT="${3:?missing slot}"
RUN="${4:?missing run status}"
LOG_FILE="${5:-}"

case "$KIND" in
  cycle) LABEL="Cycle" ;;
  check) LABEL="Check" ;;
  *) echo "ensure-run-note: unknown kind '$KIND'" >&2; exit 1 ;;
esac

TRADES_DIR="$REPO_DIR/trading-vault/Trades"
PREFIX="$RUN_DATE $RUN_SLOT $LABEL"

cd "$REPO_DIR"
mkdir -p "$TRADES_DIR"

# Claude is told to name the note "<date> <slot> <Label> — <outcome>.md"; match on the prefix
# so the outcome half is free-form.
FOUND=("$TRADES_DIR/$PREFIX"*.md)
if [ ${#FOUND[@]} -gt 0 ]; then
  echo "Run note present -> ${FOUND[0]#$REPO_DIR/}"
  exit 0
fi

if [ "$RUN" = ok ]; then
  OUTCOME="No Run Note (agent finished without writing one)"
  TAG=missing-note
  BODY="The headless Claude run exited **successfully** but did not write its run note. The
trading decisions for this slot are therefore unverified from the vault alone — read the run
log before trusting the book state below."
else
  OUTCOME="Run FAILED"
  TAG=failed
  BODY="The headless Claude run **failed** (non-zero exit). No trading decisions can be assumed
to have been made or completed for this slot. Check the run log, then decide whether to re-run
the slot manually or wait for the next one."
fi

NOTE="$TRADES_DIR/$PREFIX — $OUTCOME.md"

{
  printf '%s\n' '---'
  printf 'tags: [trade, run, %s]\n' "$TAG"
  printf 'date: %s\n' "$RUN_DATE"
  printf 'slot: "%s"\n' "$RUN_SLOT"
  printf 'kind: %s\n' "$KIND"
  printf 'outcome: %s\n' "$OUTCOME"
  printf 'source: ensure-run-note.sh (stub — not written by the agent)\n'
  printf '%s\n\n' '---'
  printf '# %s — %s\n\n' "$PREFIX" "$OUTCOME"
  printf '> **Stub note.** Written by `automation/ensure-run-note.sh`, not by the trading agent.\n'
  printf '> Its only purpose is to prove the slot fired, so a missed run never looks like a quiet day.\n\n'
  printf '%s\n\n' "$BODY"
  printf '| | |\n|---|---|\n'
  printf '| Slot | %s %s ET (%s) |\n' "$RUN_DATE" "$RUN_SLOT" "$KIND"
  printf '| Runner fired | yes |\n'
  printf '| Agent exit | %s |\n' "$RUN"
  printf '| Run note from agent | **none** |\n'
  printf '| Trades this slot | **unknown — assume none, verify against the broker** |\n'
  printf '| Log | `%s` |\n\n' "${LOG_FILE:-unknown}"
  if [ -n "$LOG_FILE" ] && [ -r "$LOG_FILE" ]; then
    printf '## Last 40 lines of the run log\n\n```\n'
    tail -n 40 "$LOG_FILE"
    printf '```\n\n'
  fi
  printf '## What to do\n\n'
  printf '1. Reconcile against the broker directly (`get_equity_orders` / `get_option_orders`\n'
  printf '   with `created_at_gte` = %s) — the vault cannot answer what traded here.\n' "$RUN_DATE"
  printf '2. If the book moved, write the real note and delete this stub.\n'
  printf '3. If nothing traded, keep this stub: it is the record that the slot fired and produced nothing.\n'
} > "$NOTE"

echo "WROTE STUB run note -> ${NOTE#$REPO_DIR/}"

# Best-effort publish. A stub that cannot be pushed is still on disk and still gets mirrored
# into the Obsidian vault, so never fail the run over the git half.
if git add "$NOTE" && git commit -q -m "Stub run note: $KIND $RUN_DATE $RUN_SLOT (agent=$RUN, no note written)"; then
  git push -q origin "$(git rev-parse --abbrev-ref HEAD)" || echo "WARNING: stub committed but not pushed"
else
  echo "WARNING: could not commit stub run note"
fi

exit 10
