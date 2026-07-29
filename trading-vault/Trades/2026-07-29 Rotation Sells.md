---
tags: [trade, filled]
date: 2026-07-29
state: filled
---

# SELL IWM + EEM — 2026-07-29 — FILLED (v1 → v2 rotation)

Full liquidation of the v1 book, ~9 minutes after it was completed, on the owner's mandate change ([[2026-07-29 Mandate Change to Aggressive]]).

| Leg | Qty | Avg fill | Proceeds | Cost | P&L | Order ID |
|---|---|---|---|---|---|---|
| SELL IWM | 0.668037 | $291.9501 | $195.03 | $195.00 | +$0.03 | `6a6a07ac-a30b-4e14-a213-0b193ec53fc7` |
| SELL EEM | 3.165841 | $61.7550 | $195.51 | $195.00 | +$0.51 | `6a6a07b1-9a07-4157-8ec7-9eec924236ff` |

Both market orders, regular hours, reviewed pre-placement with no alerts, filled 14:01 UTC, $0 fees. Round-trip P&L on the v1 book: **+$0.54**. Account value after: **$400.54**, all cash.

## Settlement constraint

Proceeds ($390.54) are **unsettled until 2026-07-30** (T+1). Buying power today is only the $10 that never left cash. The v2 deployment (SMH buy, [[2026-07-30 SMH Buy (scheduled)]]) is therefore scheduled for tomorrow after settlement — an automated wakeup is set for 9:35 AM ET.
