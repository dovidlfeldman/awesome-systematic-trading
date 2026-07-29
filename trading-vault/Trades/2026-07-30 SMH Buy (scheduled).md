---
tags: [trade, scheduled]
date: 2026-07-30
symbol: SMH
side: buy
state: scheduled
---

# BUY SMH — scheduled for 2026-07-30 — PENDING SETTLEMENT

| Field | Value |
|---|---|
| Target | ~100% of buying power (~$400) into SMH |
| Order form | Dollar-based market, regular hours |
| Trigger | Automated wakeup 2026-07-30 9:35 AM ET, after T+1 settlement of [[2026-07-29 Rotation Sells]] proceeds |

## Why SMH and why not SOXL

Per [[2026-07-29 Momentum Rankings v2]]: SMH is the #1 momentum asset (+48.76% composite) and passes the absolute gate, but its 4-week trend is −8.24%, so the leverage switch holds the position in the 1x wrapper. SOXL engages on a weekly check only when the 4-week trend is positive.

## Execution checklist for the wakeup

1. `get_portfolio` — confirm settled buying power ≈ $400.
2. Sanity-check nothing material changed (halt, circuit-breaker).
3. Review order → place dollar-based market buy for ~buying power minus $1 buffer.
4. Log fill here (rename note, drop "(scheduled)" status), update Home, push.
5. If options approval has come through (`get_accounts` shows option_level ≥ 2), start the options overlay per [[Aggressive Leveraged Momentum v2]] §6.
