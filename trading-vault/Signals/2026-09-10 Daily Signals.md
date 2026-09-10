---
tags: [signals]
date: 2026-09-10
cycle: 15
---

# 2026-09-10 Daily Signals (v3 cycle #15)

Scored on **fresh daily bars through the 2026-09-09 close** (70 bars, one new session since
the last scoring). Universe: SPY, QQQ, IWM, SMH, XLE, XLF, GLD, TLT.

Qualify = close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder). Rank by trailing 10-day return.

| Rank | Sym | Close | 20-SMA | vs SMA | 10d ret | 20d ret | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---:|:---:|
| 1 | **XLE** | 65.3100 | 63.3195 | **+1.9905 (+3.14%)** | **+5.24%** | **+7.19%** | 68.4 | ✅ |
| 2 | **SMH** | 574.2900 | 565.7030 | **+8.5870 (+1.52%)** | **+3.32%** | +0.24% | 53.2 | ✅ |
| 3 | QQQ | 716.3100 | 717.2780 | −0.9680 (−0.13%) | +0.79% | −0.30% | 51.0 | ❌ trend |
| 4 | SPY | 762.4000 | 768.2915 | −5.8915 (−0.77%) | −0.46% | −1.06% | 47.6 | ❌ trend |
| 5 | TLT | 81.7300 | 82.3525 | −0.6225 (−0.76%) | −2.08% | −0.56% | 41.0 | ❌ trend |
| 6 | XLF | 57.0600 | 57.8015 | −0.7415 (−1.28%) | −2.14% | −1.28% | 46.0 | ❌ trend |
| 7 | IWM | 290.6400 | 298.0825 | −7.4425 (−2.50%) | −2.87% | −3.44% | 39.8 | ❌ trend |
| 8 | GLD | 403.3500 | 409.8720 | −6.5220 (−1.59%) | −5.77% | +0.60% | 50.0 | ❌ trend |

**Qualifiers: 2 of 8** (down from 3). **Target book: slot 1 XLE, slot 2 SMH.**

## What changed

- **XLE and SMH swapped slots.** XLE 2 → 1 (+2.63% → +5.24% 10d), SMH 1 → 2 (+4.93% → +3.32%).
  Both remain targets, so [[Staggered Daily Swing Rotation v3]] §5 holds them — **no rotation
  is owed.** This is the *second* consecutive cycle where the top two names merely reordered.
- **QQQ failed exactly as both 09-09 checks predicted.** It was the marginal qualifier at
  $0.975 (0.14%) over its 20-SMA at 9:30 on 09-09; the 12:30 check called it "on track to
  fail," the 15:45 check measured it $1.22 below. It closed $0.968 below. **Qualifiers 3 → 2.**
- **Breadth is now at its second-tightest reading of the whole v3 era** (only 09-02's single
  qualifier was tighter). **All six failures fail the same test — price below the 20-day SMA.**
  Nothing in the universe is disqualified for being overbought: the highest RSI is XLE's 68.4,
  still 6.6 points under the 75 ceiling.
- **There is no third name.** If either XLE or SMH fails tomorrow, a slot goes to cash — QQQ is
  the nearest alternate and it is 13 bp below its own trend filter.

## The two 20-day gates

Both gates that read the 4-week trend (leverage switch → SOXL; options sleeve) consult the
**slot-1** name, and slot 1 changed hands today:

- **Sleeve gate (slot 1 = XLE, 20d +7.19%): OPEN, and for the first time in the sleeve's history
  the gate is open on a name the account can actually afford.** See the run note — a call was
  bought. XLE's +7.19% is the strongest 4-week trend in the universe by ~10× and passes the
  gate with 719 bp of margin, not the 76 bp of calendar noise that armed and disarmed the gate
  twice within one session on 09-09.
- **Leverage switch (SMH 20d +0.24%): technically armed, not taken.** SMH is slot 2 and already
  held, so no slot-2 buy was due and the switch — a *buy-time* rule — never applied. The margin
  is 24 bp, down from +0.76% on 09-09, and it has now round-tripped
  +0.76% → ~0.00% → +0.09% → +0.24% across three sessions on a price that barely moved. **This
  is the third consecutive cycle to record that a 20-day-return gate at sub-1% margin is a
  calendar artifact.** It is also fortunate it was not taken: SOXL opened this morning **−6.5%**.

## Intraday context at the 9:30–9:35 scoring window

Not part of the signal (which is close-based) but material to today's execution:

| Sym | 09-09 close | ~9:32 ET print | Move |
|---|---:|---:|---:|
| XLE | 65.31 | 65.80 | **+0.75%** |
| SMH | 574.29 | 563.43 | **−1.89%** |
| QQQ | 716.31 | 708.17 | −1.14% |
| SOXL | 125.87 | 117.695 | **−6.50%** |

Semis are selling off hard at the open while energy extends. The book is positioned with slot 1
(XLE) in the strong name — but slot 1 is also the *underfunded* leg, which is what this cycle's
buys addressed.

## Next cycle expectations (Fri 2026-09-11)

1. **SMH is the name at risk.** It qualified on the 09-09 close with $8.59 (1.52%) of room over
   its 20-SMA, but it is trading **−1.89%** this morning. A close near $563 would put it roughly
   **$2–3 below** its 20-SMA and fail the §3 trend filter — which would force a slot-2 sale and,
   with QQQ also failing, **send slot 2 to cash with no third qualifier to take it.**
2. **XLE's sleeve position is now the account's largest single risk.** Re-read XLE's 20-day
   return and the contract's DTE at the open; both close conditions are wide today (+7.19%,
   71 DTE) but the *slot-1* condition is the one that has killed both prior sleeve trades, and
   XLE has held slot 1 for exactly one session.
3. **RSI is not the binding constraint anywhere.** Six of eight names fail on trend alone; the
   universe is oversold-to-neutral, not overbought. A broad bounce would re-qualify several
   names at once.
