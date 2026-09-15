---
tags: [signals, v3]
date: 2026-09-15
cycle: 18
---

# 2026-09-15 Daily Signals — v3 cycle #18

Scored at 9:31 ET on **completed daily bars through the 2026-09-14 close** (73 bars fetched,
`interval=day`, split-adjusted). Qualify = close > 20-day SMA **AND** RSI(14, Wilder) ≤ 75.
Target book = top 2 qualifiers by 10-day return.

## Rankings

| # | Sym | Close (09-14) | 20-SMA | vs SMA | RSI(14) | 10d ret | 20d ret | Qualifies |
|---|---|---|---|---|---|---|---|---|
| 1 | **XLE** | **64.5300** | 63.8495 | **+1.07%** | 61.0 | **+2.95%** | +4.23% | **YES** |
| 2 | QQQ | 709.1800 | 714.5735 | −0.75% | 46.7 | −1.01% | −2.99% | no — trend |
| 3 | SPY | 760.8800 | 766.1060 | −0.68% | 47.1 | −1.10% | −1.99% | no — trend |
| 4 | XLF | 57.0300 | 57.6420 | −1.06% | 46.4 | −1.84% | −1.94% | no — trend |
| 5 | **SMH** | 541.5000 | 561.1300 | **−3.50%** | 42.1 | −2.10% | −7.88% | **no — trend** |
| 6 | TLT | 80.9300 | 82.1445 | −1.48% | 35.9 | −2.35% | −1.35% | no — trend |
| 7 | IWM | 287.9100 | 295.7425 | −2.65% | 37.4 | −2.65% | −5.63% | no — trend |
| 8 | GLD | 392.8400 | 409.0025 | −3.95% | 43.7 | −3.93% | −2.15% | no — trend |

**Qualifiers: 1 of 8** (XLE). Breadth 2 → 1, tying the tightest reading of the v3 era
(09-02 and 09-11 were also 1-of-8, both times with XLE as the sole name).

**Nothing was disqualified for being overbought.** The top RSI in the universe is XLE's 61.0;
every one of the seven failures failed the *trend* leg. All seven closed **below** their 20-day
SMA. This is a breadth washout, not a momentum-exhaustion signal — and the RSI ≤ 75 ceiling has
still never bound in the v3 era.

## Target book

| Slot | Target | Why |
|---|---|---|
| 1 | **XLE** | Sole qualifier; rank 1 for a **sixth consecutive session** |
| 2 | **cash** | There is no second qualifier. Rank 2 (QQQ) fails the trend filter by 0.75% |

## What changed from 2026-09-14

- **SMH fails §3 and leaves the book — one session after being bought.** It re-qualified on the
  09-11 close, was bought at 9:35 on 09-14, and closed that same session **$19.63 (3.50%) below
  its 20-SMA**. Its 20-day return also deteriorated **−3.50% → −7.88%**. Rank 5, and rank without
  qualification buys nothing.
- **XLE is unchanged at rank 1** and is the only name in the universe above its own 20-SMA.
  Its §3 cushion widened back out: **+0.91% at the 09-14 close check → +1.07%** on the settled
  close, and its 20-day return firmed **+4.06% → +4.23%**.
- **Breadth 2 → 1.** Yesterday's forward plan flagged QQQ (−0.11%), SPY (−0.34%) and XLF (−0.78%)
  as all within 1% of qualifying and said breadth could go 2 → 1 or 2 → 4 in a single session.
  It went to 1: all three drifted *further* below their 20-SMAs (−0.75%, −0.68%, −1.06%).

## Gate readings (read at signal time, applied at trade time)

- **Options sleeve close conditions** — all three **pass**, so the sleeve holds:
  1. Slot-1 underlying unchanged (XLE still rank 1, and the only qualifier — nothing can outrank it);
  2. XLE 20-day return **+4.23%** (needs negative to fire);
  3. **66 DTE** on the Nov 20 contract (floor 21, reached 2026-10-30).
- **Options sleeve entry gate** — n/a, the sleeve is already occupied (1 XLE Nov 20 $66C).
- **Leverage switch (SOXL)** — n/a. It is a **buy-time** rule and no slot's target is SMH;
  SMH is being sold, not bought. Semis' 4-week trend is **−7.88%**, so the gate is shut anyway —
  its fifth consecutive session shut, and the third on which it was read at buy time by inference
  rather than by a written rule.

## Live tape at signal time (9:31 ET) — logged, not scored

The universe opened green against a red set of closes. **XLE $64.95 (+0.65%)** — it passes §3
on live prices too, so slot 1 is not a staleness case today. **SMH $545.25 (+0.69%)**, which is
**$6.54 above yesterday's $538.7099 fill** but still **$15.88 (2.83%) below its 20-SMA** — it
fails §3 on live prices *and* on the settled close, so unlike 09-11 and 09-14 there is no
tension between the two. **Today's sell is the one case in the last three where the tape and
the bar agree.**
