---
tags: [signals, v3]
date: 2026-09-17
cycle: 20
qualifiers: 0
---

# 2026-09-17 Daily Signals — v3 cycle #20

**Scored on completed daily bars through the 2026-09-16 close.** Universe of 8, ranked by
trailing 10-day return; qualification = close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder).

## The table

| Rank | Sym | Close (09-16) | 10d ret | 20-day SMA | Cushion | RSI(14) | 20d ret | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---:|:--|
| 1 | SMH | $545.5600 | +0.06% | $557.3215 | **−2.11%** | 43.8 | −4.25% | **no** — trend |
| 2 | QQQ | $704.7200 | −0.41% | $712.6675 | **−1.12%** | 43.9 | −1.78% | **no** — trend |
| 3 | SPY | $754.0500 | −1.01% | $764.6720 | **−1.39%** | 41.6 | −1.75% | **no** — trend |
| 4 | XLE | $64.0300 | −1.14% | $64.0345 | **−0.01%** | 54.5 | +0.55% | **no** — trend, by **$0.0045** |
| 5 | TLT | $80.8800 | −1.21% | $82.0735 | **−1.45%** | 36.7 | −0.96% | **no** — trend |
| 6 | GLD | $391.7400 | −1.26% | $408.0950 | **−4.01%** | 43.2 | −1.71% | **no** — trend |
| 7 | XLF | $55.9300 | −2.22% | $57.5100 | **−2.75%** | 37.6 | −3.30% | **no** — trend |
| 8 | IWM | $283.9200 | −2.29% | $293.9810 | **−3.42%** | 32.5 | −5.43% | **no** — trend |

**Qualifiers: 0 of 8.** Every 10-day return in the universe is negative except SMH's +0.06%,
and **every one of the eight closes below its 20-day SMA**.

## Target book

**Empty.** [[Staggered Daily Swing Rotation v3]] §4 — *"fewer than 2 qualifiers → the unfilled
slot's tranche sits in cash that day (cash is a position)"* — with **zero** qualifiers, both
slots are cash.

| Slot | Target | Was |
|---|---|---|
| 1 | **cash** | XLE (7 consecutive sessions) |
| 2 | **cash** | cash (3rd consecutive session) |

## Three things this table is the first of

**1. Zero qualifiers — never happened before in twenty v3 cycles.** The previous floor was
1 of 8, printed four times (09-02, 09-11, 09-15, 09-16) and always by XLE alone. XLE has now
joined the other seven.

**2. XLE fails by $0.0045.** Close **$64.0300** against a 20-SMA of **$64.0345** — 0.007% of
price, less than half a cent, on the sum of twenty closes (Σ = $1,280.69). This is the
narrowest decision the v3 signal has ever produced, narrower than the 1.4-cent slot-2 call of
09-04. **It is not, however, the decision that matters today:** XLE is also **rank 4**, so it
leaves the book on rank as well as on trend. Had the half-cent gone the other way XLE would
have been the sole qualifier and slot 1 — so the half-cent decides the *equity leg*, while
rank 4 independently decides the *sleeve*. Both point the same way.

**3. The RSI ceiling has still never bound — in twenty cycles.** The highest reading in the
universe is XLE's **54.5**; five of eight are below 44 and IWM is at **32.5**. Every
disqualification in v3 history has been a trend failure. As a filter, RSI ≤ 75 has rejected
nothing, ever. The qualification test is empirically one-legged.

## Why XLE broke, in two parts

XLE's cushion over its 20-SMA has collapsed across four consecutive readings:

| When | Cushion | Driver |
|---|---|---|
| 09-16 09:30 | **+2.99%** | scored on the 09-15 close of $65.93 |
| 09-16 12:30 | **+0.87%** | XLE −1.98% intraday **and** base rolled $62.58 → $63.68 |
| 09-16 15:45 | **−0.21%** | XLE −1.14% further, to $63.89 |
| **09-17 09:30** | **−0.01%** | settled close $64.03 vs SMA $64.0345 |

The 09-16 15:45 check called this exactly: *"the sole qualifier now fails the trend filter on
live prices. If it holds, tomorrow has no qualifier at all and the coupled unwind takes both
legs — logged, not acted on."* It held. **That is the check/cycle division of labour going
3-for-3** (XLF 09-09, SMH 09-11, XLE today) — each time a check saw the failure a session
early, declined to act, and the cycle executed it.

Note the mechanical detail: XLE actually *closed up* on 09-16 versus its 15:45 print ($63.89 →
$64.03) and still failed, because the SMA barely moved. It did not need a bad afternoon; it
needed only to stop rising.

## Sleeve tests (1 XLE Nov 20 $66C)

| Test | Reading | Fires? |
|---|---|---|
| Underlying lost slot 1 | **XLE is rank 4; slot 1 is empty** | **YES** |
| Underlying 20d return negative | **+0.55%** (base $63.68, 08-18) | no |
| DTE < 21 | **64 DTE** (2026-11-20) | no |

The slot-1 test fires under **both** competing readings of the rule — see the run note
[[2026-09-17 0930 Cycle — Coupled Unwind, Book to 100% Cash]], where the ambiguity is set out.
XLE's own 20d is still positive at **+0.55%**, so the sleeve is closed on a *relative rank*
condition for the second time (09-04 was the first) — which is exactly the design question
open since 09-04.

## Live tape at 9:31 ET (not scored — recorded for the staleness record)

| Sym | Live | vs 09-16 close |
|---|---:|---:|
| SMH | $560.35 | **+2.71%** |
| QQQ | $715.48 | **+1.53%** |
| SPY | $762.43 | **+1.11%** |
| **XLE** | **$63.655** | **−0.59%** |

**For the first time in five sessions the live tape and the settled bar agree on the action.**
On 09-11 the tape argued against the sale, on 09-14 against the buy, on 09-16 against
declining a cheap top-up. Today XLE is the only faller in a strongly rising market and the
settled close says sell — no conflict to resolve, no staleness override to decline.

That said, the rally is a warning about *tomorrow*: SMH needs **+2.11%** to re-qualify and is
**+2.71%** right now; QQQ needs +1.12% and is +1.53%; SPY needs +1.39% and is +1.11%. **If
this session closes anywhere near here, breadth goes 0 → 2 or 3 tomorrow and the whole
$656 has somewhere to go.** Today's 100% cash may be a one-session state.
