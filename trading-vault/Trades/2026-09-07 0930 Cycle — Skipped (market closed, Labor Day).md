---
tags: [trade, run, skipped]
date: 2026-09-07
slot: "0930"
kind: cycle
outcome: Skipped (market closed, Labor Day)
---

# 2026-09-07 0930 Cycle — Skipped (market closed, Labor Day)

| | |
|---|---|
| Ran | 09:30 ET |
| Account | $765.38 (equity $96.32 + cash $669.06), +17.7% vs $650.54 contributed |
| Circuit-breaker | $325 — account at 2.35× — clear |
| Signals | **not scored — no session, no new bar.** Book stands on the 09-04 close: rank 1 XLF (+2.83% 10d, RSI 60.5), rank 2 SPY (+1.39% 10d, RSI 58.6) |
| Target book | slot 1 XLF, slot 2 SPY — carried, not re-derived |
| Held | XLF 0.829919 sh, SPY 0.0625 sh — unchanged |
| **Traded** | **none — US equity markets closed for Labor Day; the cycle was skipped at the guard, before signals** |
| Options sleeve | empty — closed 09-04 on the slot-1 test; both risk tests n/a with no position, and no re-arm is possible with $2.03 settled |
| Realized / unrealized P&L | −$143.38 / −$0.29 |
| Blocked | nothing by permission or tooling. $667.03 remains unsettled and now settles **Wed 2026-09-09**, not Tuesday — see below |

## Why the cycle was skipped

Today is **Monday, 2026-09-07 — Labor Day**, the first Monday in September and a full NYSE/Nasdaq
holiday. The prompt's guard ("skip the whole cycle if the market is closed today") fires, so the
run stopped before step 2. No signals were computed, no orders were reviewed, nothing was placed.

I did not take the calendar on faith. Four independent confirmations from the broker, all
consistent:

1. **No bar exists for today.** Daily bars for all eight universe names run
   2026-08-24 → **2026-09-04** and stop. There is no 09-07 bar to score.
2. **No prints today.** Every symbol's `venue_last_trade_time` is
   `2026-09-04T19:59:59Z` — Friday 15:59:59 ET, the closing print. Nothing has traded since.
3. **The quote feed never rolled to a new session.** `previous_close_date` is still **2026-09-03**
   and the official `close` is still the 09-03 settle — on a live Monday both would have advanced.
4. **The book is not open.** Bid/ask are timestamped `2026-09-05T00:00:00Z` (Friday 20:00 ET, the
   end of the extended session) and the spreads are placeholder-wide: XLF **$50.31 × $63.36** on a
   name that closed at $58.10. Those are not tradable markets; they are a closed book's residue.

Order history is also clean — `get_equity_orders` and `get_option_orders` with
`created_at_gte=2026-09-07` both return empty, so this is a first-and-only run for the slot, not a
duplicate of an earlier one.

## Broker state at the guard (read-only reconciliation)

Everything matches the 09-04 15:45 close check exactly. Nothing moved over the weekend.

| Item | Friday close | Now | Δ |
|---|---|---|---|
| Total value | $765.65 | $765.38 | −$0.27 (mark only) |
| Equity value | $96.59 | $96.32 | −$0.27 |
| Cash | $669.06 | $669.06 | — |
| Unsettled | $667.05 | $667.03 | −$0.02 |
| XLF shares | 0.829919 | 0.829919 | — |
| SPY shares | 0.0625 | 0.0625 | — |
| Option contracts | 0 | 0 | — |

Unrealized is **−$0.29** on $96.60 of cost — XLF marked $58.10 against a $58.1984 basis, SPY $770.23
against $772.80. Both legs are $48 tokens; neither has moved enough to mean anything. Realized stays
**−$143.38** (equity −$14.26, sleeve −$129.12).

Circuit-breaker checked first as always: **$765.38 against a $325 breaker is 2.35×**, $440.38 of
headroom. Clear. Against the $454.51 breaker the disputed-deposit reading would imply, still clear at
**1.68×**.

## What nearly mattered: the settlement date in the 09-04 plan is wrong

[[2026-09-04 0930 Cycle — Rotation XLE out, XLF+SPY in (sleeve closed)]] and Home both wrote the
forward plan as **"Next cycle (Mon 2026-09-08)"** — and built around "Monday's cycle can sell and
re-rank but effectively cannot buy; Tuesday is the first day the account can be put back to work."

**2026-09-08 is a Tuesday, not a Monday.** The plan silently assumed Monday 09-07 was a trading day
and then labelled Tuesday's date with Monday's name. The holiday was never in the model. Two
consequences, one harmless and one not:

- **Harmless:** the "Monday can re-rank but not buy" session simply does not exist. Nothing was lost,
  because there was nothing that session could have done — settled cash was $2.03 either way.
- **Not harmless:** **the settlement date is off by a day.** Friday's $667.03 of sale proceeds settle
  T+1 in *business* days. With Monday a holiday, T+1 from Friday 09-04 is **Wednesday 2026-09-09**,
  not Tuesday 09-08 as Home states. The account is **87% unspendable cash for one session longer
  than the plan assumed** — three calendar days of the recovery it correctly identified, not two.

I have corrected this in Home rather than leaving the stale date to mislead the next run. Worth
noting the shape of the error: it was not a data problem, it was a calendar assumption made without
checking, and it survived into two documents. **A trading-day calendar check belongs in the forward
plan, not just in the skip guard** — the guard caught the holiday this morning, but only after the
plan had already been written around a session that was never going to happen.

## No signals note today

Step 7 normally writes a full signal table to `Signals/`. **I deliberately did not write one.** The
most recent close is 2026-09-04, which [[2026-09-04 Daily Signals]] already scores in full; a
`2026-09-07 Daily Signals` note would be that same table under a date on which no market data was
produced. That is worse than absent — it would imply the universe was re-ranked today when it was
not, which is exactly the ambiguity the run ledger exists to remove. The ranks are **stale by
design** until Tuesday's session, and this note is where that fact lives.

## What would have fired, had the market been open

Nothing, and it is worth recording why — this would have been a no-trade day regardless of the
holiday:

- **Sells:** neither leg was bought today, and both are still the top-2 target from Friday's ranks,
  so §3 has nothing to act on. The sleeve is empty, so its three close tests are moot.
- **Buys:** settled cash is **$2.03** — the ~$2 buffer itself. There is nothing to deploy into either
  slot, and the sleeve gate is irrelevant at that size (a conforming XLF call runs low hundreds of
  dollars against $2.03 available). The binding constraint is [[Risk Rules v2]] §6, not the signal.

So the holiday cost this run nothing. **It costs the *next* run something**, because the settlement
clock only advances on business days: the extra holiday pushes the account's return to full size from
Tuesday to Wednesday.

## Watch into Tuesday 2026-09-08

1. **Tuesday re-ranks but still cannot buy at size.** Settled cash is $2.03 until the $667.03 clears
   **Wednesday 09-09**. Tuesday's cycle can sell and rotate; it cannot meaningfully deploy.
   **Wednesday is now the first day the account can be put back to work** — one session later than
   Home previously said.
2. **Three days of tape arrive at once.** Tuesday's bars will be the first new data since Friday, and
   the 10-day windows roll off three sessions of late-August prints in one step. Expect larger rank
   moves than a normal overnight.
3. **XLE is 2 bp behind SPY at rank 3** and closed Friday at $64.06, down a full session since the
   exit. If it retakes slot 2 on Tuesday, that is the whipsaw the hysteresis question in Home is
   about — and it would be a re-entry paid for with a spread, into a name sold four sessions earlier.
4. **Both legs are thin cover.** XLF sits $0.72 above its 20-SMA and SPY $3.96; one soft session puts
   either back on the boundary, and each is only a $48 position.
5. **Sleeve re-arm stays an owner decision**, per the 09-04 finding — 0-for-2 and −$129.12, both
   killed by losing a relative rank rather than by a risk test. It should not re-arm automatically on
   Wednesday just because cash finally clears.

## Hygiene

No orders placed, so no `ref_id`s were minted and no reviews were run. All broker calls this run were
read-only: `get_portfolio`, `get_accounts`, `get_equity_positions`, `get_option_positions`,
`get_equity_orders`, `get_option_orders`, `get_equity_quotes`, `get_equity_historicals`. The 9:35
open-volatility gate never came into play — there was no open.
