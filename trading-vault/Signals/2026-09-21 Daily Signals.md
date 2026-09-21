---
tags: [signals]
date: 2026-09-21
cycle: 22
---

# 2026-09-21 Daily Signals — v3 cycle #22

Scored on the **2026-09-18 close** (77 daily bars, `interval=day`, split-adjusted). Qualify =
close > 20-day SMA **and** RSI(14) ≤ 75. Target book = top 2 qualifiers by 10-day return.

| Rank | Sym | Close | 10d ret | 20d ret | 20-SMA | vs SMA | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---:|---|
| 1 | **SMH** | 573.0000 | **+3.69%** | +1.84% | 557.8235 | **+2.72%** | 54.2 | ✅ **slot 1** |
| 2 | **QQQ** | 721.4500 | **+0.53%** | +1.48% | 713.2355 | **+1.15%** | 55.7 | ✅ **slot 2** (held as **TQQQ**) |
| 3 | XLE | 64.3100 | −0.48% | +0.88% | 64.1075 | +0.32% | 55.6 | ✅ — **qualifies, buys nothing** |
| 4 | TLT | 81.2500 | −1.00% | −1.32% | 81.9570 | −0.86% | 42.9 | ❌ trend |
| 5 | SPY | 761.6900 | −1.48% | −0.12% | 764.3035 | −0.34% | 49.0 | ❌ trend |
| 6 | GLD | 401.1700 | −2.21% | −3.39% | 406.6165 | −1.34% | 50.6 | ❌ trend |
| 7 | IWM | 284.1000 | −3.76% | −4.56% | 292.4880 | −2.87% | 34.4 | ❌ trend |
| 8 | XLF | 55.8600 | −4.61% | −1.91% | 57.3755 | −2.64% | 37.1 | ❌ trend |

**Breadth: 3 of 8** — unchanged in count from 09-18 and the same three names (SMH, QQQ, XLE), two
sessions after the 0-of-8 reading of 09-17. **All five failures are trend failures; every one of
the five closed below its 20-SMA.** The RSI ≤ 75 ceiling has now gone **twenty-two cycles** without
rejecting anything — the highest reading in the universe today is QQQ's 55.7, twenty points of
headroom.

## What the table decides

**No rotation.** The target book is **SMH / QQQ**, which is exactly what the account already holds
(QQQ via its 3x wrapper TQQQ). v3 §5 sells only a holding that is no longer its target slot, so
both legs hold. SMH extended its lead rather than defended it: **+3.69%** 10-day against QQQ's
**+0.53%**, a **3.16-point** gap, and it sits **+2.72%** above its 20-SMA — the widest §3 cushion in
the qualifying set.

**No buy.** Settled cash $2.01, `unsettled_funds` $0.00. The book is 99.7% deployed; there is no
tranche waiting on a slot.

**The sleeve's entry gate is OPEN and the trade is still impossible.** §9 needs the slot-1
underlying's 20-day return positive: **SMH is +1.84%**, against **−0.06%** at Friday's open. The
only conforming contract on this morning's live chain is the **Nov 20 $585C — 0.532Δ, 60 DTE, mark
$33.425 = $3,342.50**, against a [[Risk Rules v2]] §4 cap of **$345.92** (50% of $691.84). **9.66×.**
The next strike up ($600C, $2,620) fails the delta floor at 0.459, and the Oct 30 expiry fails the
45-DTE floor at 39 days. Priced live, not carried forward.

## Leverage switch

| Underlying | 4-week trend (20 trading days) | 4-week trend (28 calendar days) | Switch | Effect |
|---|---:|---:|---|---|
| **SMH** (slot 1) | **+1.84%** | **+2.24%** | **OPEN** — was shut by 31 bp on 09-18 | Any slot-1 **buy** would take **SOXL**. None is due — no cash — so **not taken** |
| **QQQ** (slot 2) | **+1.48%** | **+1.12%** | **OPEN**, positive on both measures | Already held as **TQQQ**; the §5/§3 conflict stays dormant |

Both switches are open and both measures agree in sign on both names — no tie-band ambiguity of
the kind that made 09-18's +0.12% reading uncomfortable. **The consequence is forward-looking: the
next slot-1 buy, whenever cash appears, puts the account into SOXL alongside TQQQ — roughly 100% of
the book in 3x wrappers.** Flagged, not acted on; the switch is a buy-time rule and 09-09 set the
precedent for declining to read it as a sell signal.

## Live tape at 9:31 ET (not scored — recorded for contrast)

SMH **$582.03 (+1.58%)**, QQQ **$728.73 (+1.01%)**, TQQQ **$75.065 (+3.34%)**, SPY **+0.65%**,
XLE **$63.48 (−0.70%)**. The tape is running with the book for once rather than against it: both
legs are green on cost for the first time since Friday's fills (**+$25.35** combined). TQQQ's
**3.3×** translation of QQQ is the third live leverage reading, after 3.5× on the downside (09-18
midday) and 2.85× on the upside (09-18 close). **XLE is the only faller and would lose its
qualification on live prices** — it clears its 20-SMA by just $0.20 — but it is rank 3 and decides
nothing either way.
