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
  - [[2026-08-25 Daily Signals]] — v3 cycle #6: regime flip to GLD/XLE, full two-slot rotation
  - [[2026-08-25 Automation Gap]] — **ops**: 14 trading days missed; desktop runner proven working today
  - [[2026-08-05 Cycle Skipped (after close)]] — **ops**: post-close re-run skipped; found the headless runner has never had broker permission
  - [[2026-08-05 Daily Signals]] — v3 cycle #5: XLF/SPY book set; sleeve re-arm blocked on tool approval
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
  - [[2026-08-04 Rotation XLE out, XLF in]] — XLE −$2.97 realized; XLF in at $57.35; call closed −$63.08
  - [[2026-08-05 SPY Buy]] — filled (tranche A, slot 2)
  - [[2026-08-25 Rotation XLF+SPY out, GLD+XLE in]] — full two-slot rotation; XLF +$2.48, SPY −$2.10
- **Journal**
  - [[2026-07-29 Initial Deployment]] — v1 deployment narrative
  - [[2026-07-29 Mandate Change to Aggressive]] — why everything changed at 10 AM
  - [[2026-07-29 Mandate v3 Constant Swing]] — daily cadence, and the T+1 wall it's built around

## Current state (as of 2026-08-25, ~12:01 PM ET — v3 cycle #6 done)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) |
| Account value at cycle start | $585.09 (−10.1% vs contributed) |
| Realized P&L to date | **−$64.99** (equity legs −$1.91; options sleeve −$63.08) |
| Slot 1 | **GLD** 0.249121 sh @ $426.74 ($106.31) — bought this cycle |
| Slot 2 | **XLE** 1.697789 sh @ $62.6167 ($106.31) — bought this cycle |
| Cash | $2.01 free + **$370.38 unsettled** (XLF/SPY proceeds, settle 2026-08-26) |
| Options sleeve | Empty — gate open, but **no conforming GLD call is affordable**: Oct $425C (0.556Δ, 52 DTE) marks $1,907.50 vs a $292.55 premium cap. Structural whenever slot 1 is an expensive underlying — needs an owner decision (see [[2026-08-25 Daily Signals]]) |
| Circuit-breaker | $325 (50% of contributed capital) — checked first, account at 1.80× |

## Standing schedule

- **Desktop runner works.** `automation/` holds the canonical prompt, the headless runner, the tool allowlist (`.claude/settings.json`), and `automation/README.md`. Cycle #6 **was** a desktop run: it placed four real orders with no approval prompt. The 08-05 MCP-prefix/trust remediation is confirmed applied.
- ⚠️ **But the schedule is broken.** The runner fired on 08-05 and 08-25 and **no day in between** — 14 trading days missed, entirely undetected. Today's fire was also 2h23m late (11:58 vs 9:35 ET). Cause not determined from inside the run (`crontab`/`launchctl` are outside the allowlist). **Owner: verify the cron/launchd entry exists and is loaded** — see [[2026-08-25 Automation Gap]] for the checklist.
- Still untested: `review_option_order` / `place_option_order` under the desktop allowlist. Nothing affordable came up to exercise them.
- **Next cycle (Wed 2026-08-26):** rotation checks on GLD/XLE; $370.38 settles overnight and is deployable. Sleeve stays empty while GLD holds slot 1 — it only becomes reachable if slot 1 rotates to XLF or XLE.
