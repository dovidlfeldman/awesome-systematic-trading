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
  - [[2026-07-29 Momentum Rankings v2]] — aggressive-mandate signal (SMH #1, leverage off)
  - [[2026-07-29 Momentum Rankings]] — original v1 signal
- **Trades**
  - [[2026-07-29 IWM Buy]] — filled (v1)
  - [[2026-07-29 EEM Buy]] — filled (v1, after [[2026-07-29 EEM Buy (blocked)|the investor-profile block]])
  - [[2026-07-29 Rotation Sells]] — filled (v1 liquidation, +$0.54)
  - [[2026-07-30 SMH Buy (scheduled)]] — pending T+1 settlement
- **Journal**
  - [[2026-07-29 Initial Deployment]] — v1 deployment narrative
  - [[2026-07-29 Mandate Change to Aggressive]] — why everything changed at 10 AM
  - [[2026-07-29 Mandate v3 Constant Swing]] — daily cadence, and the T+1 wall it's built around

## Current state (as of 2026-07-29, ~10:05 AM ET)

| Item | Value |
|---|---|
| Account value | **$400.54** (all cash) |
| Realized P&L to date | +$0.54 |
| Settled buying power | $10 (rest settles 2026-07-30) |
| Target book | v3 daily rotation: two ~$200 tranches, top-2 qualifiers by 10-day momentum |
| Leverage switch | OFF pending positive 4-week underlying trend (carries over from v2) |
| Options overlay | **Approved 2026-07-29: Level 2** (long calls/puts, covered calls, CSPs). Engages per v3 §9 when slot-1 has positive 4-week trend and settled cash is available |

## Standing schedule

- **Every trading day 9:35 AM ET** — automated wakeup runs the [[Staggered Daily Swing Rotation v3]] cycle: signals → sells (if target changed) → buys (settled tranche) → vault log → re-arm next wakeup. Bootstrap 2026-07-30: tranche A buys, tranche B waits one day.
