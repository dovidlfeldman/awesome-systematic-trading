---
tags: [ops]
date: 2026-08-25
---

# Automation Gap — 2026-08-05 → 2026-08-25

**The daily cycle did not run for 20 calendar days / 14 trading days.** Recorded here because it is
the single largest operational failure in this account's short history, and because today's run
finally produced hard evidence about what does and does not work.

## What is certain

- Last cycle before today: [[2026-08-05 Daily Signals]] (plus the same-day post-close
  [[2026-08-05 Cycle Skipped (after close)]] ops note).
- `get_equity_orders` and `get_option_orders` with `created_at_gte=2026-08-05` return **exactly one**
  order — the 08-05 SPY buy. **Zero** orders between 08-06 and 08-24 inclusive. Neither runner traded.
- `automation/logs/` contains exactly two files: `cycle-2026-08-05.log` and `cycle-2026-08-25.log`.
  **No log exists for any day in between**, so the runner script did not even start on those days —
  this was not a case of it running and failing silently mid-cycle.
- Consequence to the book: XLF and SPY were held through the entire window while the strategy's
  target book moved away from both, and $214.63 of settled cash sat undeployed.

## What today proved (the good news)

**This session is the desktop runner.** `automation/logs/cycle-2026-08-25.log` shows the
`git pull --rebase` from `run-daily-cycle.sh` at 11:58 ET, and the headless `claude -p` invocation
that followed is the session that executed this cycle. That retires the standing ⚠️ from
[[2026-08-05 Cycle Skipped (after close)]]:

- The workspace is **trusted** — the allowlist is being applied, not discarded.
- The MCP prefix fix **was** applied on 08-05 (`.claude/settings.json`, mtime Aug 5 16:33, uses the
  correct `mcp__claude_ai_Robinhood__*` names).
- **Broker access works.** This cycle placed four real orders — two sells, two buys, all filled —
  through `review_equity_order` / `place_equity_order` with no approval prompt.
- Read-side options tools (`get_option_chains`, `get_option_instruments`, `get_option_quotes`) also
  worked with no prompt.

Caveat, stated precisely: **`review_option_order` and `place_option_order` were still not
exercised.** No conforming GLD call was affordable, so there was nothing to review. Whether the
order-side options tools clear without an approval prompt remains **untested**. The next cycle
where slot 1 is XLF or XLE will be the first real test.

## What is not determined

Why the runner fired on 08-05 and 08-25 but on no day in between, and why today's fire was at
**11:58 ET rather than the intended 9:35 ET** (2h23m late — late enough that a real 9:35 signal
would have been acted on at meaningfully different prices).

The two candidate explanations are (a) no cron/launchd entry was ever installed and both runs were
manual, or (b) an entry exists but is misconfigured or was not loaded. **I could not distinguish
them from inside the run:** `crontab -l` and `launchctl list` are outside the runner's permission
allowlist in `.claude/settings.json`, so the inspection was blocked. This is a genuine blind spot —
the runner cannot diagnose its own scheduling.

## Recommended owner actions

1. **Confirm the schedule exists and is loaded.** Run `crontab -l` (or
   `launchctl list | grep -i cycle`) manually. If nothing is there, the 3-week gap is fully
   explained and installing the entry fixes it. `automation/README.md` has the entry to install.
2. **Fix the fire time** to ~9:35–9:40 ET on weekdays. Today's 11:58 fire is not what the strategy
   is specified against.
3. **Add a liveness check.** The failure mode here was *silence* — nothing errored, nothing
   alerted, the book simply drifted. A trivial guard: have the cycle note the date of the previous
   log in `automation/logs/` and shout if the gap exceeds one trading day. Consider adding
   `Bash(crontab:*)` and `Bash(launchctl:*)` (read-only use) to the allowlist so the runner can
   self-diagnose next time.
4. **Decide on the sleeve.** Separate from scheduling — see the sleeve section of
   [[2026-08-25 Daily Signals]]. It is unreachable by arithmetic whenever slot 1 is an expensive
   underlying, which is 6 of the 8 universe names at this account size.

## Cost

Not cleanly measurable — the counterfactual book over 14 trading days is unknowable without a full
replay, and the strategy's edge over that horizon is weak-positive at best (v3's own
[[Staggered Daily Swing Rotation v3|ex-ante note]] says as much). What is measurable: the account
went from $587.15 to $585.09 across the window, and today's rotation realized **+$0.39** closing
out the two stale positions. The gap was not expensive. It was, however, entirely undetected, and
that is the part worth fixing.
