---
tags: [trade, run, traded]
date: 2026-09-14
slot: "0930"
kind: cycle
outcome: SMH re-bought into slot 2
---

# 2026-09-14 0930 Cycle — SMH Re-Bought into Slot 2

| | |
|---|---|
| Ran | 09:30 ET (orders placed 09:35, after the open-volatility gate) |
| Account | **$762.63** (equity $456.45 + options $304.00 + cash $2.18), **+17.2%** vs $650.54 contributed — or **−16.1%** vs $909.02 if the disputed cash is a deposit |
| Circuit-breaker | $325 — account at **2.35×** ($437.63 headroom) — **clear** |
| Signals | rank 1 **XLE** (+4.58% 10d, RSI 66.1, +2.23% vs 20-SMA), rank 2 **SMH** (−0.78% 10d, RSI 51.4, **+0.90% vs 20-SMA**); qualifiers **2 of 8** |
| Target book | slot 1 **XLE**, slot 2 **SMH** |
| Held | XLE equity 1.632641 sh + XLE Nov 20 $66C — both unchanged, still slot 1 |
| **Traded** | **1 fill — bought 0.647844 SMH @ $538.7099 ($349.00) into the empty slot 2** |
| Options sleeve | **held** — all three close conditions pass wide (XLE still rank 1, XLE 20d +6.68%, 67 DTE) |
| Realized / unrealized P&L | **$0.00 today** (−$155.84 to date) / **+$9.45** |
| Blocked | none |

## What happened

Two qualifiers today, up from one on Friday: **XLE** (rank 1, unchallenged for a fifth session)
and **SMH** (rank 2). XLE equity is still slot 1, so §5 held it — no churn, no settlement clock
burned. Slot 2 was cash, SMH is its target, and `unsettled_funds` came back **$0.0000** with all
$351.18 of cash spendable. One buy was owed and one buy was placed.

Full signal table: [[2026-09-14 Daily Signals]].

### Orders

| # | Leg | Side | Type | Size | Fill | `ref_id` | Result |
|---|---|---|---|---|---|---|---|
| 1 | SMH | buy | market, GFD, regular hours | $349.00 dollar-based | **0.647844 sh @ $538.7099** | `ca6161e8-7926-4fcb-98b0-75bff250afc5` | filled 09:35:22.896, **0.13 s**, $0 fees |

Reviewed before placing, per §5. `review_equity_order` returned **`order_checks: {}`** — no broker
alerts of any kind. The compliance disclosure returned with the review, verbatim:

> Bid $538.09 × 360 P · Ask $538.39 × 40 Q · Last $538.28 × 40 P. Updated 9:35 AM ET.

Spread at review was **$0.22 on $538 (4 bp)** — inside the penny-spread test that permits a market
order under [[Risk Rules v2]] §5. Order id `6aa7f81a-0e43-41fd-a246-b708dbf5acbc`.

### Hygiene

- Settled cash only: `unsettled_funds` **$0.0000**, buying power $351.18, order $349.00, leaving
  **$2.18** — the ~$2 buffer. Nothing was bought with unsettled proceeds.
- Nothing was sold, so the no-same-day-sale-of-unsettled rule is not in play.
- Fresh UUID `ref_id`, one logical order, placed once.
- Orders held to **09:35:22** — the open-volatility gate held for the fifth consecutive cycle;
  the 08-28 early-exit bug did not recur.

## The thing worth reading: Friday's urgent recommendation was wrong, and today priced it

Friday's note and [[00 - Home]] both closed with the **rank-boundary hysteresis band** as the
account's most urgent open item — "**owner decision wanted before Monday's open, because Monday is
when it costs money**." The argument was that SMH had been sold on a stale failing close, would
re-qualify today, and the book would pay a spread and a settlement cycle to end where it started.

SMH did re-qualify today. **The round trip did not cost money — it made money.** The full history,
from the broker rather than from memory:

| Date | Action | Shares | Price | Cash |
|---|---|---:|---:|---:|
| 09-08 | buy | 0.615853 | $578.0599 | −$356.00 |
| 09-11 | sell | 0.615853 | $566.80 | +$349.07 (realized **−$6.93**) |
| 09-14 | buy | **0.647844** | **$538.7099** | −$349.00 |

Had the proposed hysteresis band been in force, the book would have **held** SMH through Friday
and would now own 0.615853 sh against a $356.00 basis, marked at $538.7099 = **$331.79**, an
unrealized **−$24.21**. As actually executed the book took a realized **−$6.93** and re-entered
$28.09/share lower. **The mechanical rule beat the proposed band by $17.28** — and the account now
holds **0.647844 shares instead of 0.615853, +5.2% more semis for the same dollars.**

This does not make the band a bad idea; one sample is one sample, and the band would still have
saved the spread on a flat tape. But it does dismantle the specific case Friday made for it. The
whole point of selling on a trend-filter failure is that a name below its 20-SMA is more likely to
keep falling — and SMH fell another **−4.96%** in the one session the band would have held it. The
staleness that looked like a bug on Friday (selling into a +1.04% gap) was the filter being early,
not wrong. **Recommend downgrading the hysteresis band from "urgent" to "open question," and
re-testing it over more than two sessions before changing a rule that has now paid for itself.**

## And the same staleness cut the other way this morning

Symmetry worth recording, because it is uncomfortable. SMH qualifies on the **09-11 close**
($568.53, $5.08 above its 20-SMA). At 9:31 it was trading **$539.81, −5.05% on the day** — which is
**$23.64 (4.2%) below** that same 20-SMA. On live prices it fails §3 outright, and not marginally.
It was bought anyway, at $538.71.

Friday the tape argued *against* a sale and the sale went through; today the tape argued *against*
a buy and the buy went through. Both on the same principle: **the signal is defined on completed
daily bars, and re-scoring on a 90-second-old print is a different strategy invented mid-run.**
The 09-11 note committed to that reading at the exact moment an override would have *avoided* a
realized loss, which is the hard direction. Declining today — one session later, when the override
would *reduce* risk — would have produced a strategy that sells on stale bad news and refuses to
buy on fresh bad news. That ratchet is not in any backtest and would make the record meaningless.

**Flagged honestly: this may well be today's loser.** SMH is likely to close below its 20-SMA and
sell tomorrow morning, and the note should say so before the fact rather than after. The defence
is not that the trade will work; it is that the rule is the same rule in both directions, and it
has been applied that way two sessions running.

## The leverage gate earned its keep, loudly

Slot 2's target is SMH, which arms the v3 substitution *if* semis' 4-week trend is positive. It is
**−3.50%**, so the gate is **shut** and the slot bought 1× SMH. This is the third consecutive
cycle where the gate has been consulted, and the first where the alternative was catastrophic:

| | 09-11 close | 09-14 @ 9:31 | Move |
|---|---:|---:|---:|
| SMH (bought) | $568.53 | $539.81 | **−5.05%** |
| SOXL (refused) | $121.82 | $101.23 | **−16.90%** |

$349 into SOXL instead of SMH would have been worth roughly **$290 within two minutes of the
open** — about **$41 worse**, on an account of $763. Three cycles have now recommended codifying
the switch as an explicit **buy-time** rule rather than leaving it to inference; today it was read
at buy time, correctly, and that reading is the single most valuable decision of the session.

## Options sleeve — held, and green for the first time

1 XLE Nov 20 $66C, bought 09-10 at $2.95. Re-read all three close conditions this morning rather
than trusting the position (the 09-02 lesson: conformance is a property of the morning you check
it):

| Condition | Test | Today | Pass |
|---|---|---|:--|
| Underlying lost slot 1 | XLE must stay rank 1 | rank 1, by ~4× on 10d return | ✅ |
| Underlying 20d return negative | XLE 20d > 0 | **+6.68%** | ✅ |
| Fewer than 21 DTE | ≥ 21 | **67 DTE** | ✅ |

Mark **$3.04** against a $2.95 fill — **+$9.00, the first positive mark since entry** (it was
−$29.00 at Friday's close, its worst). Delta back to **0.537** from 0.499. Premium at risk is
$304.00 = **39.9%** of account, under the §4 50% cap. No new sleeve entry was owed because the
sleeve is not empty.

The 09-11 asymmetry still holds and is now load-bearing: **only a name outranking XLE can kill
this sleeve**, and the only other qualifier in the universe is 5.4 percentage points behind on
10-day return with a negative 4-week trend.

## Position after this cycle

| Slot | Holding | Cost | Mark | P&L |
|---|---|---:|---:|---:|
| 1 | XLE 1.632641 sh | $107.00 | ~$107.45 | +$0.45 |
| 1 (sleeve) | XLE Nov 20 $66C ×1 | $295.00 | $304.00 | **+$9.00** |
| 2 | SMH 0.647844 sh | $349.00 | $349.00 | $0.00 (just filled) |
| — | Cash | | $2.18 | |

Account **99.7% deployed**. Concentration: XLE $411.45 = **54.0%** of the account, SMH **45.8%** —
both compliant under §2 (up to 100% permitted for the top-ranked asset, and this concentration
arrived from the system).

## Forward plan (Tue 2026-09-15)

1. **Expect to sell SMH.** On current prices it closes today far below its 20-SMA and fails §3 at
   tomorrow's re-rank. Settlement is not the constraint — read `unsettled_funds` anyway, it has
   been wrong from memory twice in opposite directions. Next US holiday is **Thanksgiving
   2026-11-26**, checked against the calendar rather than recalled.
2. **If SMH goes, slot 2 returns to cash** unless something else recovers its 20-SMA. QQQ (−0.11%),
   SPY (−0.34%) and XLF (−0.78%) are all within 1% of qualifying, so breadth can go 2 → 1 or
   2 → 4 in a single session. Nothing is disqualified for being overbought.
3. **The sleeve needs nothing unless a new name takes rank 1.** 66 DTE tomorrow; both risk tests
   pass by wide margins. Re-read all three anyway.
4. **Hysteresis band: downgraded from urgent to open.** Today's tape says the band would have cost
   $17.28 on its first live test. Do not change the rule on two data points in either direction.
5. **Still the highest-value fix: the 09-04 sleeve-design question** — close the sleeve on XLE's
   *own* trend and DTE rather than on losing a relative rank. Unchanged, and now the sleeve is
   green, which is the calmest moment to decide it.
6. **Still unanswered: the +$258.48 deposit.** Contributed capital and the breaker remain at
   $650.54 / $325 pending owner confirmation.
