---
tags: [trade, run, no-action]
date: 2026-09-14
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-14 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $726.85 (equity $458.67 + options $266.00 + cash $2.18), **+11.7%** vs $650.54 contributed *(−20.0% vs $909.02 if the disputed $258.48 is a deposit)* |
| Circuit-breaker | $325 — account at **2.24×** ($401.85 headroom) — clear |
| Positions | XLE 1.632641 sh @ $65.54 ($106.46 mkt, unrealized **−$0.55**) · SMH 0.647844 sh @ $538.7099 ($352.25 mkt, unrealized **+$3.25**) · 1 XLE Nov 20 $66C @ $2.95 ($266.00 mkt, unrealized **−$29.00**) |
| Options sleeve | **held** (67 DTE, XLE 20d **+5.32%**) |
| Sleeve tests | 20d-return test: **pass** (+5.32%, needs negative) · <21-DTE test: **pass** (67 DTE, floor 21) |
| Settlement guard | not binding (`unsettled_funds` $0.0000; nothing sold) |
| **Traded** | **none — no exit condition met** |

Breaker first, as always: `get_portfolio` reports **$726.85** against a $325 breaker — **2.24×**, $401.85 of headroom, clear by a wide margin. (Against the $454.51 breaker the unconfirmed-deposit reading would imply, still clear at 1.60×.) Nothing in §1 fires, so the emergency liquidation path never opened and the §6 settlement guard was never tested — `unsettled_funds` reads **$0.0000** anyway.

**The sleeve held, and both of its tests passed by margins, not by inches.** Pulled 65 daily bars for XLE and measured the 20-day return from the close 20 sessions back: **+5.32%** ($65.205 live vs the 08-14 close of $61.91). The test needs the 20-day return to have *turned negative*; it is 532 bp the wrong side of that. DTE is **67** against a floor of 21 — 46 days of slack. **The drop from this morning's +6.68% to +5.32% is entirely the rolling window, not XLE falling:** the base rolled off the 08-13 close ($61.06) and picked up 08-14's ($61.91), a **+1.39%** rise in the denominator, while XLE itself is **+0.10%** on the day at $65.205. Measured against this morning's base the reading would be +6.79%, i.e. slightly *better* than at 9:30. This is the same calendar-not-price effect logged on 09-03 and 09-09, and it is worth restating: a 20-day return can decay a full percentage point on a green day.

The contract itself gave back its gain — the Nov 66C marks **$2.66 vs a $2.95 fill (−$29.00)**, down from **+$9.00** at 9:35 this morning, with delta back to 0.503 from 0.537. That is a $38 round trip in three hours and it erases the sleeve's first-ever green mark, but **a mark-to-market drawdown is not a close condition** under [[Risk Rules v2]] §4 or v3 §9, and no stop was invented mid-run to make it one. The third close condition — a name outranking XLE — is a 9:30 decision and is not read here. Contract liquidity remains fine (141 OI, 55 traded, $2.58 × $2.74). No GFD sleeve order from earlier today was outstanding to re-place: `get_option_orders` for today returns **zero** option orders.

**Equities: no action, by rule.** SMH is the interesting name and it is explicitly not this run's call. It trades **$543.73, −4.36% on the day**, far below its 20-SMA — it fails §3 on live prices by roughly the same margin flagged ex-ante in this morning's cycle note, and it is the likely sell at tomorrow's re-rank. That is the fourth consecutive check to measure a §3 failure intraday and decline to act on it; the previous three (XLF on 09-08, SMH on 09-10 twice) were all correctly deferred to the next cycle, which sold them. **Rotation is the 9:30 cycle's job alone and nothing here changes that.** Worth recording against this morning's ex-ante flag: the buy is currently **up $3.25**, filled at $538.7099 into the gap and now $5.02 higher. That is three hours of noise, not vindication — but the note said "this may well be today's loser," and so far intraday it is not.

**No buys and no rotation were made — that is a rule of this check, not an outcome.** The only thing that can sell an equity at 12:30 is a tripped §1 breaker, and the breaker is at 2.24×. The specific reason nothing traded: the sleeve's two risk tests both passed wide (20d **+5.32%** positive, **67** DTE), and no other instrument in this check has a sell condition that can fire.

## Forward look (for the 9:30 cycle, Tue 2026-09-15)

1. **SMH still looks like tomorrow's sell** — below its 20-SMA all session on a −4.36% day, one session after being bought. Score it on the completed 09-14 bar, not on this reading.
2. **The sleeve needs nothing unless a new name takes rank 1.** 66 DTE tomorrow, XLE 20d comfortably positive, XLE +0.10% on a day the rest of the book fell. Re-read all three conditions anyway.
3. **Read `unsettled_funds` before believing any settlement arithmetic** — $0.0000 now, and it has been mis-stated from memory twice in opposite directions.
