---
tags: [signal]
date: 2026-07-29
---

# Momentum Rankings — 2026-07-29 (initial deployment)

Computed per [[Dual Momentum Rotation]] rules. Source: Robinhood weekly OHLCV bars (split-adjusted), 53 weeks ending week of 2026-07-20 (last completed week). Score = mean of 13w / 26w / 52w total returns.

| Rank | Ticker | 13w | 26w | 52w | **Score** | Gate (> BIL) |
|---:|---|---:|---:|---:|---:|---|
| 1 | **IWM** | +5.25% | +9.95% | +29.77% | **+14.99%** | ✅ pass |
| 2 | **EEM** | −0.64% | +7.21% | +27.91% | **+11.49%** | ✅ pass |
| 3 | QQQ | +3.07% | +9.88% | +20.81% | +11.25% | pass (not selected) |
| 4 | SPY | +3.50% | +7.21% | +15.98% | +8.90% | pass (not selected) |
| 5 | EFA | +1.61% | +3.44% | +13.95% | +6.33% | pass (not selected) |
| 6 | GLD | −14.16% | −18.80% | +20.98% | −3.99% | ❌ fail |
| 7 | TLT | −3.99% | −5.32% | −3.68% | −4.33% | ❌ fail |
| — | BIL (hurdle) | +0.00% | +0.02% | −0.11% | −0.03% | — |

## Decision

- **Select IWM + EEM**, ~$195 each, ~$10 cash residual.
- Both pass the absolute-momentum gate → both slots deployed (no cash slot).

## Notes recorded at signal time

- EEM (+11.49) vs QQQ (+11.25) is inside noise; EEM also has a *negative* 13-week leg (decelerating). The rule selects EEM and the rule is followed — see "Tie-region noise" in [[Dual Momentum Rotation]]. If EEM's deceleration continues, the September signal will rotate it out mechanically.
- GLD's 52w is strong (+20.98%) but its 13w/26w collapse (−14%/−19%) drags the composite negative — exactly the case the multi-horizon blend exists for.
- TLT fails everything; long duration remains in a downtrend.
- Intraday context at execution: EEM trading ~$61.6 vs prior close $62.36 (down ~1.2% on the day). Signal is computed on weekly closes; intraday moves are not signals ([[Risk Rules]] §7).
