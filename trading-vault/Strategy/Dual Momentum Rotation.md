---
tags: [strategy, retired]
status: retired
adopted: 2026-07-29
retired: 2026-07-29
superseded_by: "[[Aggressive Leveraged Momentum v2]]"
---

# Dual Momentum Rotation

> [!warning] Retired 2026-07-29 — same day it was deployed — by owner mandate change to aggressive trading. See [[2026-07-29 Mandate Change to Aggressive]]. Kept for the record.

The single active strategy for the Agentic account. Chosen because it is one of the most robust, widely replicated anomalies in the academic literature (Jegadeesh & Titman 1993; Antonacci's *Dual Momentum*; Keller's VAA family), it needs no options approval or margin, and it trades rarely — which matters in a small cash account where settlement and slippage dominate.

## Why this and not stock-picking or day trading

- **$400 in a cash account** cannot absorb the spread/slippage cost of frequent trading, and cash-account settlement rules (good-faith violations) punish rapid turnover. A monthly-rebalance ETF strategy trades ~12–24 times per year total.
- Discretionary stock-picking has no documented edge for this account to lean on. Cross-sectional + absolute momentum does: positive expected excess return across a century of data and many asset classes, with the absolute-momentum gate historically cutting max drawdown roughly in half versus buy-and-hold.
- No strategy guarantees profit. This one is chosen to maximize the *probability-weighted* outcome, not to promise one.

## Universe

Eight liquid, low-spread ETFs spanning the major asset classes:

| Ticker | Asset class |
|---|---|
| SPY | US large-cap equity |
| QQQ | US large-cap growth/tech |
| IWM | US small-cap equity |
| EFA | Developed intl equity |
| EEM | Emerging-market equity |
| GLD | Gold |
| TLT | Long US Treasuries |
| BIL | 1–3 mo T-bills (cash proxy / momentum hurdle) |

## Rules (fixed ex-ante — no mid-month discretion)

1. **Signal date:** first trading day of each month, using weekly closes through the last completed week.
2. **Momentum score:** mean of trailing 13-week, 26-week, and 52-week total returns (≈ 3/6/12-month composite). Blending horizons reduces the chance a single lookback is the artifact.
3. **Selection (relative momentum):** rank the universe by score; select the **top 2**.
4. **Gate (absolute momentum):** a selected asset is held only if its score exceeds BIL's score. Any slot failing the gate stays in **cash**. This is the crash-protection mechanism.
5. **Weights:** equal weight across held slots (~$195 each at current capital), residual in cash.
6. **Rebalance:** on signal date, sell holdings that dropped out of the top 2 (or failed the gate), buy the new selections. If holdings are unchanged, do nothing — no partial rebalancing of drifted weights at this account size (trade costs exceed the benefit).
7. **Execution:** ultra-liquid ETFs only, during regular hours, at least 15 minutes after the open. Dollar-based market orders (required for fractional sizing on Robinhood); acceptable because spreads on this universe are ~1–3 bp. Every order is simulated via review before placement.

See [[Risk Rules]] for the hard limits that override these rules.

## Known weaknesses (documented so future-me doesn't rediscover them the hard way)

- **Whipsaw:** momentum is trend-following; V-shaped reversals produce sell-low/buy-high sequences. Accepted cost of the crash gate.
- **Tie-region noise:** ranks 2 vs 3 are often within noise (on 2026-07-29, EEM 11.5 vs QQQ 11.2). The rule is followed mechanically anyway — swapping picks by judgment is how systematic strategies quietly become discretionary ones.
- **Small-sample account:** with 2 slots, one bad pick is a 50% allocation. Position count is capped by capital, not by preference.
- **Taxable churn:** monthly turnover is short-term-gains inefficient. Acceptable at this account size; revisit if capital grows.

## Change log

- 2026-07-29 — Strategy adopted; initial signals in [[2026-07-29 Momentum Rankings]]; deployment narrative in [[2026-07-29 Initial Deployment]].
