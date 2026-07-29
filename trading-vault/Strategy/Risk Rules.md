---
tags: [strategy, risk]
---

# Risk Rules

> [!warning] Retired 2026-07-29 — superseded by [[Risk Rules v2]] after the owner's aggressive-mandate change. Kept for the record.

Hard limits. These override [[Dual Momentum Rotation]] and any future strategy. A trade that violates any rule below does not get placed, full stop.

1. **Instruments:** long US-listed ETFs and large-cap equities only. No options, no margin, no leveraged/inverse ETFs, no crypto, no penny/illiquid stocks (min ~$1M avg daily dollar volume — trivially satisfied by the current universe).
2. **Position cap:** no single position may exceed 55% of account value at time of purchase.
3. **No averaging down** outside a scheduled rebalance.
4. **Order hygiene:** every order is reviewed (simulated) before placement; market orders only on instruments with ≤5 bp typical spread during regular hours; all other cases use limit orders.
5. **Cash-account discipline:** buy only with settled funds; never sell a position bought with unsettled funds (good-faith-violation avoidance).
6. **Drawdown circuit-breaker:** if account value closes below **$300** (−25% from the $400 start), liquidate to cash, halt trading, and flag the user for a strategy review before resuming.
7. **No intraday reaction trades.** The strategy acts on monthly signals only. News, single-day moves, and "it's dipping" are not signals.
8. **Full documentation:** every order (including blocked/rejected ones) gets a note in `Trades/` with the reasoning chain that produced it, before or immediately after placement.

## Honest framing

Expected outcomes are probabilistic. Historical behavior of this strategy class (long-run, across implementations): mid-to-high single-digit annual returns with roughly half the drawdown of buy-and-hold equities — **and** multi-year stretches of underperformance. On $400, normal monthly P&L swing is on the order of ±$10–25. Nothing here is a guarantee of profit, and no one — human or agent — can promise "making money" on any given horizon.
