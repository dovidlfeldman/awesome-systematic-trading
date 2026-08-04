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
  - [[2026-08-04 Daily Signals]] — v3 cycle #4: XLF takes the lead, XLE rotated out, sleeve closing
  - [[2026-08-03 Daily Signals]] — v3 cycle #3: XLE holds, GLD whipsawed out, XLF queued
  - [[2026-07-31 Daily Signals]] — v3 cycle #2: XLE holds, GLD takes slot 2, options sleeve engaged
  - [[2026-07-30 Daily Signals]] — v3 cycle #1: XLE/XLF lead, semis crash dodged
  - [[2026-07-29 Momentum Rankings v2]] — aggressive-mandate signal (SMH #1, leverage off)
  - [[2026-07-29 Momentum Rankings]] — original v1 signal
- **Trades**
  - [[2026-07-29 IWM Buy]] — filled (v1)
  - [[2026-07-29 EEM Buy]] — filled (v1, after [[2026-07-29 EEM Buy (blocked)|the investor-profile block]])
  - [[2026-07-29 Rotation Sells]] — filled (v1 liquidation, +$0.54)
  - [[2026-07-30 SMH Buy (scheduled)]] — never executed: v3 signal disqualified SMH (−23% 20d), dodging ~−10%
  - [[2026-07-30 XLE Buy]] — filled (tranche A, v3 cycle #1)
  - [[2026-07-31 GLD Buy]] — filled (tranche B, v3 cycle #2)
  - [[2026-07-31 XLE Call Buy]] — Oct $59C filled at $2.73 (sleeve first engagement)
  - [[2026-08-03 GLD Sell]] — whipsaw exit, +$0.13 realized
  - [[2026-08-04 Rotation XLE out, XLF in]] — XLE −$2.97 realized; XLF in at $57.35; call closing
- **Journal**
  - [[2026-07-29 Initial Deployment]] — v1 deployment narrative
  - [[2026-07-29 Mandate Change to Aggressive]] — why everything changed at 10 AM
  - [[2026-07-29 Mandate v3 Constant Swing]] — daily cadence, and the T+1 wall it's built around

## Current state (as of 2026-08-04, ~9:35 AM ET — v3 cycle #4 done)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) |
| Account value at cycle start | $590.79 (−9.2% vs contributed) |
| Realized P&L to date | −$2.30 (+$0.67 prior − $2.97 XLE) |
| Tranche A | Cash $197.03 (XLE sold; settles 08-05, buys SPY at cycle #5) |
| Tranche B | **XLF** 3.051443 sh @ $57.35 ($175) — slot 1, bought this cycle |
| Options sleeve | XLE Oct $59C **closing** — sell limit $2.10 GFD working (order `6a71e9e3`); ~−$63 if filled |
| Circuit-breaker | $325 (50% of contributed capital) |

## Standing schedule

- **Every trading day ~9:38 AM ET** — scheduled cycle (session-local job; re-verified/re-created each run since durable triggers are approval-gated): signals → sells (if target changed) → buys/sleeve → vault log.
- **Today 10:35 AM ET:** one-shot check on the call's sell order — re-price to current mid if unfilled.
- **Next cycle (Wed 2026-08-05):** tranche A buys SPY (slot 2) with settled XLE proceeds; sleeve may re-arm on XLF calls once the close settles.
