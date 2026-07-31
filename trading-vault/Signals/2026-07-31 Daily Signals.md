---
tags: [signal]
date: 2026-07-31
---

# Daily Signals — 2026-07-31 (v3 cycle #2)

Daily bars through 2026-07-30. Rank = 10-day return; qualify = close > 20-SMA and RSI(14) ≤ 75. Run at ~9:57 AM ET (the 9:37 scheduled job was lost to a session restart; cycle run manually on the owner's "Update" ping, then re-armed).

| Rank | Sym | 10d | 20d | >20-SMA | RSI14 | Qualifies |
|---:|---|---:|---:|---:|---:|---|
| 1 | **XLE** | +3.40% | +11.65% | yes | 60.6 | **YES → slot 1 (held)** |
| 2 | **GLD** | +3.34% | +1.77% | yes | 50.4 | **YES → slot 2 (new)** |
| 3 | XLF | +0.44% | +4.05% | yes | 62.7 | qualifies, rank 3 |
| 4 | IWM | −1.01% | −2.25% | no | 48.9 | no |
| 5 | SPY | −1.20% | −0.55% | no | 49.2 | no |
| 6 | TLT | −1.67% | −3.18% | no | 34.6 | no |
| 7 | QQQ | −3.17% | −5.74% | no | 43.2 | no |
| 8 | SMH | −5.28% | −13.15% | no | 42.3 | no |

## Capital event

Owner deposited **$250** (settled). Contributed capital is now **$650.54**; account value at cycle start $651.37. [[Risk Rules v2]] circuit-breaker rebased to **$325** (50% of contributed capital).

## Decisions

- **Tranche A: hold XLE** (still slot 1; smart-hold, no churn).
- **Slot 2 target flipped XLF → GLD** (gold's 10-day surged to +3.34). Tranche B had no XLF position to sell (bootstrap), so no sell leg; B deploys into GLD.
- **Options sleeve: ENGAGED.** Gate open (XLE 20d +11.65%). Sleeve cap now $325 (50% of $651). Chose **XLE Oct 16 $59C** — 0.54Δ, 77 DTE, mark $2.73, OI 14,747, θ −0.020/day (vs −0.026 for the Sep contract). Order: 1 contract, **limit $2.73 (mid)**, GFD. Working at time of log; if it expires unfilled, next cycle re-places if still conforming.
- **Tranche B equity: $175 → GLD** (executed). Note: GLD gapped −2% intraday vs yesterday's close at execution; per doctrine, signals are computed on closes and intraday moves are not signals — the entry landed 2% below the signal close, which is favorable, not a signal change.

## Book after cycle #2

XLE 3.417 sh (~$201) + GLD 0.4735 sh ($175) + XLE Oct $59C working ($273 reserved) + residual cash.
