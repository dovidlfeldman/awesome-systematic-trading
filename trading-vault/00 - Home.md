---
tags: [moc]
---

# Trading Vault — Home

Obsidian vault documenting all systematic trading activity in the Robinhood **Agentic** account (cash account ending ••••1227).

## Map of Content

- **Strategy**
  - [[Staggered Daily Swing Rotation v3]] — **active** since 2026-07-29 (owner mandate: constant swing/day trading)
  - [[Risk Rules v2]] — active hard limits
  - [[Aggressive Leveraged Momentum v2]] — retired (leverage switch + options spec carry into v3)
  - [[Dual Momentum Rotation]] — retired v1 (lived one morning)
  - [[Risk Rules]] — retired v1 limits
- **Signals**
  - [[2026-07-30 Daily Signals]] — v3 cycle #1: XLE/XLF lead, semis crash dodged
  - [[2026-07-29 Momentum Rankings v2]] — aggressive-mandate signal (SMH #1, leverage off)
  - [[2026-07-29 Momentum Rankings]] — original v1 signal
- **Trades**
  - [[2026-07-29 IWM Buy]] — filled (v1)
  - [[2026-07-29 EEM Buy]] — filled (v1, after [[2026-07-29 EEM Buy (blocked)|the investor-profile block]])
  - [[2026-07-29 Rotation Sells]] — filled (v1 liquidation, +$0.54)
  - [[2026-07-30 SMH Buy (scheduled)]] — never executed: v3 signal disqualified SMH (−23% 20d), dodging ~−10%
  - [[2026-07-30 XLE Buy]] — filled (tranche A, v3 cycle #1)
- **Journal**
  - [[2026-07-29 Initial Deployment]] — v1 deployment narrative
  - [[2026-07-29 Mandate Change to Aggressive]] — why everything changed at 10 AM
  - [[2026-07-29 Mandate v3 Constant Swing]] — daily cadence, and the T+1 wall it's built around

## Current state (as of 2026-07-30, ~9:40 AM ET — v3 cycle #1 done)

| Item | Value |
|---|---|
| Account value | ~$400.5 |
| Realized P&L to date | +$0.54 |
| Tranche A | **XLE** 3.417056 sh @ $58.53 ($200.00) — bought 2026-07-30 |
| Tranche B | Cash ~$200.54 (bootstrap stagger; deploys 2026-07-31) |
| Leverage switch | OFF (no 3x wrapper exists for XLE in the approved set) |
| Options overlay | Gate **OPEN** on XLE (20d +10.4%) but no conforming contract ≤$200 premium in the 0.50–0.65Δ band — sleeve empty, re-checked daily |

## Standing schedule

- **Every trading day 9:35 AM ET** — chained wakeup runs the [[Staggered Daily Swing Rotation v3]] cycle: signals → sells (if target changed) → buys (settled tranche) → vault log → re-arm next wakeup.
- **2026-07-31:** tranche B deploys — conforming XLE call if one fits the sleeve rules, else XLF equity (slot 2).
