---
tags: [trade, run, traded]
date: 2026-09-17
slot: "0930"
kind: cycle
outcome: Coupled Unwind, Book to 100% Cash
---

# 2026-09-17 0930 Cycle — Coupled Unwind, Book to 100% Cash

| | |
|---|---|
| Ran | 09:30 ET (gate held to 09:35; orders 09:35:20–09:35:24) |
| Account | **$666.49** (equity $0 + options $0 + cash $666.49), **+2.45%** vs $650.54 contributed — or **−26.7%** vs $909.02 if the disputed cash is a deposit |
| Circuit-breaker | $325 — account at **2.05×** ($341.49 headroom) — **clear**, checked before any order |
| Signals | **0 of 8 qualify — the first zero-qualifier reading in v3 history.** rank 1 SMH (+0.06% 10d, RSI 43.8), rank 2 QQQ (−0.41%, RSI 43.9), rank 3 SPY (−1.01%, RSI 41.6), **rank 4 XLE (−1.14%, RSI 54.5)** |
| Target book | **slot 1 cash, slot 2 cash** — §4, "fewer than 2 qualifiers → the unfilled slot's tranche sits in cash" |
| Held | **nothing** — the book is flat for the first time since 2026-07-30 |
| **Traded** | **2 fills, the coupled unwind — see table below** |
| Options sleeve | **Closed.** XLE Nov 20 $66C sold at $2.06 on the slot-1 test; its own two risk tests (20d **+0.55%**, **64 DTE**) both still passed |
| Realized / unrealized P&L | **−$91.82 today** (equity −$2.78, option −$89.04) → cumulative **−$242.52** / unrealized **$0.00** |
| Blocked | `get_realized_pnl` not in the allowlist, so today's arithmetic reconciliation is unverified against the broker |

## Orders

| # | Leg | Side | Type | Qty | Fill | Proceeds | Realized | `ref_id` | Order id | Latency |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | XLE equity | sell | market, GFD, regular | 1.632641 sh | **$63.8401** | $104.23 | **−$2.78** | `625116fe-34fe-44dd-b7a1-b6e1f99cc760` | `6aabec98-09a3-4ba3-a955-cc7cf35e995c` | **0.12 s** |
| 2 | XLE Nov 20 $66C | sell to close | limit $2.06, GFD, regular | 1 | **$2.06** | $206.00 (−$0.04 fee) | **−$89.04** | `e592ac68-264c-4b6c-a533-1bf01ecb60f5` | `6aabec9b-0103-4007-8d89-853daa33b031` | **1.07 s** |

Both reviewed first; **`order_checks: {}` on both** — no broker alerts, no collateral, $0.04 total
fees. Fresh UUID per logical order. Nothing was bought with unsettled funds and nothing bought
today was sold; §6 and §7 are not implicated because there were no buys at all.

Required market-data disclosure from the equity review, verbatim:

> Bid $63.95 × 800 V · Ask $63.96 × 2000 V · Last $63.95 × 100 J. Updated 9:33 AM ET.

## Why everything sold

**Zero of eight names qualify.** Every symbol in the universe closed 09-16 **below its 20-day
SMA**; seven of eight also have negative 10-day returns. The target book is therefore empty, and
§5 sells any holding that is no longer *a* target slot. XLE was slot 1 for seven consecutive
sessions and is now neither slot.

The full table is in [[2026-09-17 Daily Signals]]. The two numbers that carried the decision:

- **XLE closed $64.0300 against a 20-day SMA of $64.0345 — it failed the trend filter by $0.0045.**
  Less than half a cent, 0.007% of price. This is the narrowest call the v3 signal has produced,
  beating 09-04's 1.4-cent slot-2 decision by two orders of magnitude.
- **XLE is also rank 4**, behind SMH, QQQ and SPY on 10-day return.

**Those two facts do different work, and it matters which.** The half-cent decides the *equity*
leg: had XLE closed a half-cent higher it would have been the sole qualifier and slot 1, and the
shares would have been held. Rank 4 decides the *sleeve*, and it does so independently of the
half-cent. So the equity sale genuinely rests on $0.0045 — and the sleeve close does not.

Executed on the settled close, as always. The [[2026-09-11 0930 Cycle — Rotation SMH out, slot 2 to cash|09-11]]
and [[2026-09-14 0930 Cycle — SMH Re-Bought into Slot 2|09-14]] precedents are explicit that the
signal is defined on completed daily bars and is not re-scored on a 90-second-old open print,
including — especially — when doing so would reverse an uncomfortable trade.

## The sleeve close condition was ambiguous, and today both readings agree

The rule reads: close *"if its underlying lost slot 1."* That sentence has two defensible readings,
and this vault has used them inconsistently:

| Reading | Text | Says today |
|---|---|---|
| **(a)** XLE no longer *holds* slot 1 | plain parse — subject XLE, verb "lost slot 1" | **close** (slot 1 is empty) |
| **(b)** another name *took* slot 1 from XLE | [[2026-09-11 0930 Cycle — Rotation SMH out, slot 2 to cash\|09-11]]: *"killed only by a name outranking XLE"* | **close** — SMH, QQQ and SPY all outrank XLE on 10d |

**Today they converge, so no interpretation had to be chosen to act.** That is worth recording
plainly, because it means today is *not* a precedent for either reading.

**The day that will force the choice is a day when XLE fails §3 but is still rank 1 on 10-day
return** — reading (a) closes the call, reading (b) keeps it while the shares are sold. That
configuration has not occurred yet. Yesterday's forward plan anticipated something close to it and
came down on (b): *"the book goes to 100% cash plus an orphaned call — legal, because none of the
sleeve's three close conditions reads the equity leg."* **The plan's conclusion was not tested
today** — it assumed XLE would still be rank 1, and XLE fell to rank 4 instead.

For the record, two arguments point at (a) if it is ever forced: v3 §9 defines the sleeve as *"long
calls on the slot-1 asset"*, so a call with no slot-1 asset under it has no definition; and Risk
Rules v2 §2 permits concentration *"only when the position is the top-ranked asset under the active
strategy's rules"* — an orphaned call would be 100% of the account's risk in a name the system had
just disqualified. **This is an owner decision, not a mid-cycle one, and it was not made today.**

## The sleeve is 0-for-3 and lost on rank again

| # | Contract | Bought | Sold | Realized | Killed by |
|---|---|---|---|---|---|
| 1 | XLE Oct $59C | 07-31 @ $2.73 | 08-04 | **−$63.08** | rank (XLF took slot 1) |
| 2 | XLE Nov $65C | 09-02 @ $3.15 | 09-04 | **−$66.04** | rank (XLF took slot 1) |
| 3 | **XLE Nov $66C** | **09-10 @ $2.95** | **09-17 @ $2.06** | **−$89.04** | **rank (slot 1 emptied)** |

**Total: −$218.16, against −$24.36 from every equity rotation in the account's history.** The sleeve
is **90% of all realized losses** on 3 of 12 closed positions.

**All three died the same way, and none died of a risk test.** Today's contract had **64 days to
expiry** and XLE's own 20-day return was **+0.55%** — positive. Both of the sleeve's actual risk
conditions passed. It was closed solely because a relative ranking moved. This is the third
consecutive instance of the failure mode flagged on 09-04: **a 45–90 DTE instrument selected by a
gate that re-decides every morning.** Trade 3 was the longest hold yet — 5 sessions — and lost the
most.

The one genuinely new fact: **this trade did not need a competitor to kill it.** Trades 1 and 2 were
displaced by XLF taking slot 1. Trade 3 was killed by slot 1 ceasing to exist. That closes off the
"it only dies in a healthy, rotating market" defence offered on 09-11, which argued the sleeve was
*"paradoxically safer in a one-qualifier market."* **It was not safer. The one-qualifier market
became a zero-qualifier market and took the sleeve with it.**

**Owner decision (open since 09-04, now on its third loss and its strongest evidence): close the
sleeve on XLE's own trend and DTE rather than on losing a relative rank — or retire the sleeve.**

## What today actually cost, honestly

**−$91.82 realized is the largest realized loss in a single session in this account's history**
(prior worst: −$66.05 on 08-04). But that headline is misleading and should not be read as a bad
day:

| | At 09:30 | At the fills |
|---|---:|---:|
| XLE equity | −$3.13 unrealized | **−$2.78 realized** |
| XLE Nov 66C | −$99.00 unrealized | **−$89.04 realized** |
| **Total** | **−$102.13 carried** | **−$91.82 booked** |

**Every dollar of today's realized loss was already being carried as an unrealized loss at the
open — and the account realized $10.31 *less* than it was carrying**, because both legs ticked up
between the 9:30 snapshot and the 9:35 fills. **Account value rose from $656.19 to $666.49 over the
cycle.** Realizing a loss moves it across an accounting boundary; it does not create it. A log that
reported "worst day ever" here would be measuring the boundary, not the money.

## Execution notes

- **"Limit at mid" was again not exactly expressible, and again cost about half a cent.** These
  chains tick at $0.01 below $3.00. At 9:35 the book was **$1.99 × $2.14, mid $2.055** — so $2.06
  was the tick at-or-above mid and **filled at $2.06 in 1.07 seconds**, inside a 15-cent spread.
  Same lesson as [[2026-09-10 0930 Cycle — Options Sleeve Re-Armed (XLE Nov 66C) + Slot 1 Top-Up|09-10]]:
  say which tick was taken rather than calling it "mid."
- **The 9:33 review was re-priced before placing, and that was worth $11.** The first option review
  was written at 9:31 prices (mid $1.955) and reviewed at $1.95. By 9:33 the bid was **$1.97** — the
  original limit had gone stale *through* the bid and would have sold below the market. Re-quoting at
  9:35 lifted the fill to $2.06. **A review is only valid at the price it was taken; on a fast open,
  re-quote between review and place.** XLE moved $63.655 → $63.95 in the same two minutes.
- **The 9:35 open-volatility gate held** — breaker, signals, positions and both reviews were all
  done during the wait, orders placed at 9:35:20. The 08-28 early-exit bug did not recur.
- **Both fills beat the 9:30 tape**, which is the mirror of the usual staleness complaint: XLE sold
  at **$63.8401** and the call at **$2.06** versus $63.655 and a $1.955 mid at 9:31.

## The disputed $258.48 now reconciles to within one cent

With the book at **100% cash and zero unrealized P&L**, the account's arithmetic closes exactly for
the first time ever — there are no marks left to argue about:

```
contributed  $650.54  +  deposit  $258.48   =  $909.02
                     −  realized  $242.52   =  $666.50
       actual account value                 =  $666.49      (1¢ apart)
```

Against the un-adjusted denominator the same sum gives **$650.54 − $242.52 = $408.02**, which is
**$258.47 short** of the real balance. **The $258.48 that appeared on 2026-08-28 with no order
behind it is almost certainly an owner deposit**; nothing else explains a $258.47 gap to the penny.

**This does not change the books today.** Restating contributed capital is a fact only the owner can
confirm, and this run will not move the breaker on its own inference — the standing practice since
08-31. But the evidence is now about as strong as an inference can get, and the honest headline is
the second one: **the account is −26.7% against $909.02 of contributed capital, not +2.45% against
$650.54.**

One caveat on rigour: **`get_realized_pnl` is not in the agent's allowlist** (permission refused this
morning), so the −$242.52 cumulative figure is this vault's running tally, not the broker's. The
one-cent agreement is strong evidence the tally is right, but it is self-consistency, not
independent confirmation. **Worth adding to the allowlist** — it would settle the deposit question
outright.

## Settlement

`unsettled_funds` = **$310.17** against **$666.49** total, so **$356.32 is settled** — precisely
yesterday's settled cash, untouched. Today's $310.19 of proceeds (equity $104.23 + option $205.96)
settles **T+1 on Fri 2026-09-18**; the option execution carries `settlement_date: 2026-09-18`
explicitly, and the next US holiday is Thanksgiving 2026-11-26.

**Nothing was constrained by this today** — §6 limits sizing to settled cash, but with zero
qualifiers there was nothing to size. Had breadth held at one name, $356.32 would have been
available and §4 would have declined it anyway, as on 09-16.

## Forward plan (Fri 2026-09-18, 9:30 ET)

1. **Expect to buy, possibly twice.** The whole account is cash and the live tape is ripping: at
   9:31 **SMH +2.71%, QQQ +1.53%, SPY +1.11%, and XLE −0.59% was the only faller.** SMH needs
   **+2.11%** on the session to retake its 20-SMA and is already above that; QQQ needs +1.12% and is
   at +1.53%; SPY needs +1.39% and is at +1.11%. **If this session closes near these levels, breadth
   goes 0 → 2 or 3 and tomorrow deploys the full $666.49 into two slots.** Today's 100% cash is
   plausibly a one-session state.
2. **Verify `unsettled_funds` before sizing — do not trust the sentence above.** T+1 says all
   $666.49 is spendable Friday. This file has been wrong about settlement from memory **twice, in
   opposite directions** (09-07, 09-08). The broker's number is free.
3. **Re-derive from the rules, do not execute this plan.** [[2026-09-16 0930 Cycle — No Trades|09-16]]
   is the precedent: a forward plan instructed a trade that §4 forbade, and only re-reading the rule
   before acting caught it. **The forward plan is a prediction, not an instruction** — and note that
   item 2 of *yesterday's* plan is wrong in today's note as well.
4. **Check the leverage gate at buy time if SMH is a target.** SMH's 20-day return is **−4.25%**, so
   the SOXL substitution is **shut** — but it is shut on inference again, for the seventh consecutive
   session. If SMH re-qualifies tomorrow this becomes a live buy-time decision rather than a moot one.
5. **The sleeve can only re-arm on a cheap slot-1 name.** The 09-09 arithmetic
   (`underlying × 0.07 ≤ 50% of account`) puts SMH ($560), QQQ ($715) and SPY ($762) far out of
   reach at a $666 account; only XLE, XLF and TLT are affordable. **If SMH or QQQ takes slot 1 the
   sleeve stays empty on price, whatever the trend gate says** — and given it is 0-for-3 at −$218.16,
   that is not a bad outcome.
6. **Open owner items, ranked by how much they now cost:**
   (a) **the sleeve design** — close on XLE's own trend/DTE, not on relative rank; three losses,
       −$218.16, 90% of all realized loss, and today's evidence is the cleanest yet;
   (b) **confirm or deny the $258.48 deposit** — now reconciled to one cent, and the difference
       between reporting +2.45% and −26.7%;
   (c) **write the leverage switch down as a buy-time rule** — seventh consecutive recommendation;
   (d) **the §4 breadth question from 09-16** — moot today at zero qualifiers, live again the moment
       exactly one name qualifies;
   (e) **add `get_realized_pnl` to the allowlist**, and fix the sixteen-day-old git permission defect.
