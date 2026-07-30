---
tags: [signal]
date: 2026-07-30
---

# Daily Signals — 2026-07-30 (v3 cycle #1, bootstrap)

Daily bars through 2026-07-29. Rank = 10-day return; qualify = close > 20-SMA **and** RSI(14) ≤ 75.

| Rank | Sym | 10d | 20d | >20-SMA | RSI14 | Qualifies |
|---:|---|---:|---:|---|---:|---|
| 1 | **XLE** | +3.81% | +10.43% | yes | 59.2 | **YES → slot 1** |
| 2 | **XLF** | +0.21% | +5.73% | yes | 60.5 | **YES → slot 2** |
| 3 | GLD | −0.34% | +0.73% | no | 45.0 | no |
| 4 | TLT | −1.65% | −4.13% | no | 34.9 | no |
| 5 | IWM | −2.43% | −3.95% | no | 41.6 | no |
| 6 | SPY | −3.36% | −2.32% | no | 38.6 | no |
| 7 | QQQ | −7.80% | −10.14% | no | 32.5 | no |
| 8 | SMH | **−14.65%** | **−23.12%** | no | 33.1 | no |

## The story of the day: the SMH crash we didn't buy

Semis collapsed this week — SMH closed 504.22, down from ~561 at the v2 signal date (−10% in days, −23% over a month). The v2 plan queued "buy SMH today"; two mechanical layers killed it: (a) T+1 settlement forced a one-day delay, and (b) the v3 daily signal disqualified SMH outright (last place, far below its 20-SMA). Between yesterday's intended entry (~$560 area) and today, the filters avoided roughly a −10% hit to that tranche. Rotation leadership has flipped to defensives/cyclicals: energy and financials are the only names above trend.

## Decisions

- **Tranche A → XLE $200** (slot 1). Executed — [[2026-07-30 XLE Buy]].
- **Tranche B → wait** (bootstrap stagger day; deploys tomorrow into a conforming XLE call if one fits the sleeve rules, else XLF equity).
- **Options overlay gate: OPEN** (XLE 20d = +10.43% > 0) — first time. Chain check at 9:37 AM ET:
  - In-delta-band candidates (0.50–0.65): Sep18 $59C 0.51Δ ≈ $222; Oct16 $59C 0.53Δ ≈ $268; Sep18 $57C 0.65Δ ≈ $330 — **all above the $200 premium cap** (50% of $400.54).
  - Under-cap candidate: Sep18 $60C $178 — but 0.44Δ, outside the band.
  - **Verdict: no conforming contract → sleeve stays empty.** Both constraints held rather than bending either. Re-check daily; the cap loosens as the account grows and premiums move.
