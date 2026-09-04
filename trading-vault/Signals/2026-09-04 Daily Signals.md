---
tags: [signals, v3]
date: 2026-09-04
cycle: 12
---

# 2026-09-04 Daily Signals — v3 cycle #12

Scored on completed daily bars **through the 2026-09-03 close** (71 bars fetched, 65 needed).
Rank = trailing 10-day return. Qualify = close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder).
Base date for the 10-day window: **2026-08-20**.

## Signal table

| Rank | Sym | Close (09-03) | 10d return | 20d return | 20-SMA | Gap to SMA | RSI(14) | Qualifies |
|---|---|---|---|---|---|---|---|---|
| 1 | **XLF** | $58.560 | **+2.83%** | +1.30% | $57.8390 | **+$0.721** | 60.51 | ✅ |
| 2 | **SPY** | $773.170 | **+1.39%** | +0.60% | $769.2065 | **+$3.964** | 58.61 | ✅ |
| 3 | XLE | $64.620 | +1.36% | +11.11% | $62.5430 | +$2.077 | 67.66 | ✅ |
| 4 | QQQ | $717.670 | +0.95% | +0.42% | $717.7140 | −$0.044 | 52.66 | ❌ trend |
| 5 | TLT | $82.070 | −0.33% | −0.55% | $82.3960 | −$0.326 | 43.71 | ❌ trend |
| 6 | IWM | $295.190 | −0.83% | −1.03% | $299.1430 | −$3.953 | 46.51 | ❌ trend |
| 7 | GLD | $410.220 | −1.21% | +5.27% | $409.4785 | +$0.742 | 54.79 | ✅ |
| 8 | SMH | $552.600 | −1.79% | −3.30% | $566.2035 | −$13.604 | 45.54 | ❌ trend |

**Qualifiers: 4 of 8** (XLF, SPY, XLE, GLD) — up from **1 of 8** on 09-02. The breadth collapse
that had seven names below their 20-SMA has partly reversed: SPY, XLF and QQQ all climbed back
toward or through their averages while XLE stalled.

## Target book

| Slot | Target | Was | Action |
|---|---|---|---|
| 1 | **XLF** | XLE | **rotate** — XLE sold, XLF bought |
| 2 | **SPY** | cash | **buy** — slot 2 reoccupied for the first time since 09-01 |

**Options sleeve: CLOSE.** The XLE Nov 20 $65C closes because its underlying **lost slot 1** —
the first of the three close conditions to fire. The other two are nowhere near: 20-day return
is **+11.11%** (needs negative) and the contract has **77 DTE** (floor 21). This is the coupled
unwind [[00 - Home]] flagged as untested: slot 1 changing hands takes out the equity leg and the
call in the same session, on a name that was 88% of the account.

## The 1.4-cent decision

**XLE lost slot 2 to SPY by $0.0136 of closing price.** SPY's 10-day return is +1.3860%; XLE's is
+1.3647%. For XLE to have tied, it needed to close at **$64.6336** instead of $64.620 — 2.1 basis
points higher, about one tick.

That margin decided a full liquidation of the equity slot. Two things keep it from being an
error:

1. **The sleeve close does not depend on it.** XLF beat XLE by **1.44 percentage points** for
   slot 1 — not marginal by any reading. The call closes on that, whatever happens at the
   slot-2 boundary.
2. **The rule is mechanical by design.** §4 ranks on 10-day return with no tie band, no hysteresis,
   and no minimum-edge threshold. Adding one *after seeing which side of the line the position
   landed on* is the exact discretion the system exists to remove.

But it is worth recording as a real cost: rotating out of XLE and back in tomorrow (if it
reclaims a slot) would burn two spreads and a settlement cycle on a 2 bp signal difference.
**A rank-boundary hysteresis band — e.g. an incumbent holds its slot unless beaten by ≥25 bp of
10-day return — is a strategy change worth the owner's consideration.** It is not something to
adopt mid-cycle.

## Notes

- **QQQ missed by $0.044** — four and a half cents below its 20-SMA. Had it qualified it would
  have ranked 4th anyway and changed nothing, but it is the next name likely to re-enter.
- **XLE's 20-day return is still +11.11%**, far and away the strongest in the universe. What
  killed it is the *10-day* window: the base date rolled to 08-20, and XLE has gone essentially
  sideways ($63.75 → $64.62) since, while XLF ran +2.83%. This is a rotation out of a leader
  that stopped leading, not out of one that broke down.
- **GLD qualifies again** (back above its 20-SMA by $0.74) but ranks 7th on 10-day return, so it
  gets nothing. It was sold on 09-01 for −$19.97.
- **Breadth is recovering but shallow:** the three names above their SMAs clear it by 1.2%, 0.5%
  and 3.3% respectively. Another down session puts SPY and XLF back on the boundary.
