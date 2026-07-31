---
tags: [trade, options, working]
date: 2026-07-31
symbol: XLE
state: working
---

# BUY XLE Oct 16 '26 $59 CALL — 2026-07-31 — WORKING (options sleeve, first engagement)

| Field | Value |
|---|---|
| Account | Agentic (••••1227) |
| Contract | XLE 2026-10-16 $59 call (77 DTE), long, 1 contract |
| Greeks at entry | 0.54Δ, θ −0.020/day, IV 24.3% |
| Order | Limit **$2.73** (mid; bid 2.67 × ask 2.80), GFD, open |
| Max loss | $273 + $0.04 fees (premium; defined risk) |
| Breakeven at expiry | $61.73 (+4.7% from spot ~$58.96) |
| Order ID | `6a6ca9f2-dd2c-45ed-973a-7649622977e2` |
| Placed (UTC) | 2026-07-31 13:58:10 — **confirmed, unfilled at log time** |

## Why this contract

First engagement of the options sleeve ([[Aggressive Leveraged Momentum v2]] §6 spec via [[Staggered Daily Swing Rotation v3]] §9): gate open (XLE 20-day +11.65%), sleeve empty, cap now $325 (50% of $651 account). Among conforming contracts (0.50–0.65Δ, 45–90 DTE): Oct $59C picked over Sep $59C for ~23% lower daily theta and 2.3× the open interest, at $46 more premium. Sep $57C (0.66Δ, $340) failed both delta band and cap.

## Fill status & follow-up

Limit is at mid per rules ("mid or better") — not guaranteed to fill. GFD: if unfilled at close, the order expires; the next daily cycle re-places at the then-current mid **if** the contract still conforms and the gate is still open.

## Exit plan

Sell to close when: XLE loses slot 1 or its 20-day turns negative (trend-gate close), or the contract's remaining DTE < 21 (roll/exit to avoid gamma-decay zone), or circuit-breaker. Premium is the max loss; no assignment risk on a long call.
