---
tags: [signal]
date: 2026-07-29
---

# Momentum Rankings v2 — 2026-07-29 (aggressive mandate)

Recomputed after the mandate change, adding SMH to the universe. Weekly closes through week of 2026-07-20. Score = mean of 13/26/52-week returns; 4w column drives the leverage switch.

| Rank | Underlying | 4w | 13w | 26w | 52w | **Score** | 3x vehicle |
|---:|---|---:|---:|---:|---:|---:|---|
| 1 | **SMH** | **−8.24%** | +10.81% | +40.27% | +95.20% | **+48.76%** | SOXL |
| 2 | IWM | −2.89% | +5.25% | +9.95% | +29.77% | +14.99% | TNA |
| 3 | EEM | — | −0.64% | +7.21% | +27.91% | +11.49% | (EDC — excluded, illiquid) |
| 4 | QQQ | −3.15% | +3.07% | +9.88% | +20.81% | +11.25% | TQQQ |
| 5 | SPY | +1.36% | +3.50% | +7.21% | +15.98% | +8.90% | UPRO |

## Decision

- **Target: 100% SMH (1x).** SMH is #1 by composite with a wide margin, passes the absolute gate, but fails the 4-week leverage gate (−8.24%) → 3x (SOXL) stays off.
- Context: semis peaked mid-June (SMH ~660) and have pulled back ~15%; SOXL is ~50% off its June high — precisely the falling/high-vol regime where 3x decay is worst. The switch exists for this case.
- Every other high-momentum underlying also has a negative 4-week trend; only SPY (rank 5) is positive. No case for leveraging a low-momentum asset just because it's the only one trending — composite rank picks the asset, the 4w gate only picks the wrapper.

## Standing watch

Weekly checks: if SMH's 4w return turns positive while it remains #1 → rotate SMH → SOXL. If SMH loses #1, rotate to the new leader under the same gates.
