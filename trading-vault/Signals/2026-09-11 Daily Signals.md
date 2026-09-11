---
tags: [signals]
date: 2026-09-11
cycle: 16
---

# 2026-09-11 Daily Signals (v3 cycle #16)

Scored on **fresh daily bars through the 2026-09-10 close** (71 bars, one new session since the
last scoring). Universe: SPY, QQQ, IWM, SMH, XLE, XLF, GLD, TLT.

Qualify = close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder). Rank by trailing 10-day return.

| Rank | Sym | Close | 20-SMA | vs SMA | 10d ret | 20d ret | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---:|:---:|
| 1 | **XLE** | 64.9300 | 63.5145 | **+1.4155 (+2.23%)** | **+4.00%** | **+6.39%** | 65.2 | ✅ |
| 2 | SMH | 560.2800 | 564.4755 | **−4.1955 (−0.74%)** | +0.81% | −4.20% | 48.0 | ❌ trend |
| 3 | QQQ | 708.6900 | 716.5275 | −7.8375 (−1.09%) | −0.38% | −2.07% | 46.0 | ❌ trend |
| 4 | SPY | 757.8300 | 767.5585 | −9.7285 (−1.27%) | −1.08% | −1.90% | 43.9 | ❌ trend |
| 5 | XLF | 56.8700 | 57.7490 | −0.8790 (−1.52%) | −2.39% | −1.81% | 44.6 | ❌ trend |
| 6 | TLT | 80.7800 | 82.2860 | −1.5060 (−1.83%) | −3.03% | −1.62% | 34.1 | ❌ trend |
| 7 | IWM | 287.7000 | 297.3320 | −9.6320 (−3.24%) | −3.76% | −4.96% | 36.2 | ❌ trend |
| 8 | GLD | 396.3600 | 409.4440 | −13.0840 (−3.20%) | −5.92% | −2.11% | 45.6 | ❌ trend |

**Qualifiers: 1 of 8** (down from 2). **Target book: slot 1 XLE, slot 2 → cash.**

This **ties the tightest breadth reading of the entire v3 era** — 2026-09-02 was also a single
qualifier, and it was also XLE alone. Seven of eight names fail on the **same** test, price below
the 20-day SMA. Nothing is disqualified for being overbought: the highest RSI in the universe is
XLE's 65.2, a full ten points under the 75 ceiling.

## What changed

- **SMH failed the §3 trend filter and leaves the book.** It closed at $560.28 against a 20-SMA of
  $564.4755 — **$4.20 (0.74%) below**. It is still *rank 2* by 10-day return (+0.81%), but rank
  without qualification buys nothing: [[Staggered Daily Swing Rotation v3]] §4 defines slot 2 as
  the **second qualifier**, not the second-ranked name. With no other qualifier, **slot 2 goes to
  cash** and the position is sold. See the run note.
- **Both 09-10 checks called this correctly and both declined to act.** The 12:30 check measured
  SMH $3.44 below its 20-SMA with a 20d of −3.86%; the 15:45 check measured $2.63 below with a 20d
  of −3.92%, and wrote *"it fails §3 on current prices and slot 2 likely sells tomorrow, logged not
  acted on."* That is now **two consecutive rotations** (XLF on 09-09, SMH today) that the intraday
  checks saw coming a day early and correctly deferred to the cycle. The division of labour is
  holding up.
- **SMH's 20-day return has collapsed, not drifted.** +0.24% at yesterday's open → **−4.20%** today.
  For three straight cycles this note recorded that SMH's 20d was calendar noise oscillating around
  zero at sub-1% margins; it has now moved 444 bp in one session on real price action. The name that
  took slot 1 from rank 8 on a single +2.61% session (09-08) has given all of it back.
- **XLE is unchanged in every way that matters and is now the whole book.** Rank 1 for a second
  session, 10d +4.00% (from +5.24%), 20d **+6.39%** — still the strongest 4-week trend in the
  universe by roughly 3×, with the runner-up (GLD, −2.11%) negative. RSI cooled 68.4 → 65.2.

## The two 20-day gates

Both gates read the **slot-1** name, and slot 1 did not change hands.

- **Sleeve gate (slot 1 = XLE, 20d +6.39%): OPEN — and the sleeve is already filled.** All three
  §3 close conditions on the open XLE Nov 20 $66C are wide: XLE holds slot 1, its 20-day return is
  **+6.39%** (needs to turn negative), and the contract has **70 DTE** (floor 21). **Held.** Note
  the asymmetry the 09-10 close check predicted and today confirms: *SMH failing did not touch the
  sleeve.* The sleeve dies only when something **outranks XLE**, and after today there is no second
  qualifier to outrank anything.
- **Leverage switch (SMH 20d −4.20%): shut, and decisively.** It has been "technically armed" at
  +0.76% / +0.09% / +0.24% for three cycles and was deliberately never taken on the grounds that a
  sub-1% margin on a rolling window is a calendar artifact. It is now **−4.20%** — 420 bp the wrong
  way. **Not taking it was correct three times over**, and today the switch is not merely unarmed
  but far from arming. (It is also moot: SMH is leaving the book entirely.)

## Intraday context at the 9:30–9:35 scoring window — and the tension in it

Not part of the signal (which is close-based) but **materially at odds with it today**, so it is
recorded in full rather than buried:

| Sym | 09-10 close | ~9:31 ET print | Move | vs a 20-SMA rolled to include this print |
|---|---:|---:|---:|---|
| SMH | 560.28 | 566.09 | **+1.04%** | **+2.77 — would PASS** |
| XLE | 64.93 | 65.16 | +0.35% | +1.44 — passes |
| GLD | 396.36 | 402.23 | **+1.48%** | −7.38 — still fails |
| IWM | 287.70 | 291.11 | +1.19% | −5.60 — still fails |
| XLF | 56.87 | 57.39 | +0.91% | −0.32 — still fails |
| SPY | 757.83 | 764.60 | +0.89% | −2.29 — still fails |
| QQQ | 708.69 | 714.545 | +0.83% | −1.11 — still fails |
| TLT | 80.78 | 81.315 | +0.66% | −0.91 — still fails |

**The whole universe gapped up, and SMH gapped hardest.** On the live print SMH is back *above* a
forward-rolled 20-SMA and would re-qualify — so today's sale is executed on a name that, at the
moment of sale, passes the filter that condemned it.

**This was executed as written anyway, and deliberately.** The signal is defined on completed daily
bars; re-scoring on a 90-second-old open print is not the strategy, it is a different strategy
invented mid-run. The direct precedent is **09-09**, when XLF was sold on a stale close while
trading +0.43% intraday — and it was the right call. **But this is the sharpest version of that
tension the book has produced**, because the gap is on the *pass/fail* side of the line rather than
merely on the price, and because no third qualifier exists to take the slot. It belongs to the same
family as the 09-04 1.4-cent slot decision: **a boundary case the rules resolve cleanly and a human
might want to resolve differently.** Flagged for the owner, not acted on. See the run note.

## Next cycle expectations (Mon 2026-09-14)

1. **Roughly half the account will be in unsettled cash.** ~$348 of SMH proceeds settle **Mon
   2026-09-14** (T+1 from Fri 09-11; the next US market holiday is Thanksgiving 2026-11-26, so no
   holiday intervenes). **Read `unsettled_funds` from `get_accounts` before believing that date** —
   two cycles (09-07, 09-08) mis-stated settlement from memory in opposite directions, and on 09-08
   the money had already settled a day early.
2. **The most likely Monday decision is whether SMH comes straight back.** If this morning's gap
   holds into the close, SMH re-qualifies on Monday's scoring and is the obvious slot-2 candidate —
   with settled cash available to buy it. **That would be a two-day round trip on the same name, a
   spread and a settlement cycle spent to end where the book started.** It is the cleanest example
   yet of the case for the rank-boundary **hysteresis band** proposed on 09-04. Worth the owner's
   decision *before* Monday, because Monday is when it costs money.
3. **Breadth is the binding constraint, not price.** Seven of eight names fail on trend alone and
   five of them are within 2% of their 20-SMA. Today's broad +0.7–1.5% gap, if it sticks,
   **re-qualifies SMH, XLF, QQQ, SPY and TLT more or less at once** — the book could go from one
   qualifier to five in a single session.
4. **The sleeve is safe from everything except a new rank-1 name.** XLE 20d +6.39% and 70 DTE both
   pass wide, and the only path to a close is another name *outranking* XLE on 10-day return. On
   today's numbers the nearest challenger is 319 bp behind and below its own trend filter.
