---
tags: [journal]
date: 2026-07-29
---

# Journal — 2026-07-29 — Initial Deployment

## Situation

First session on the Agentic account: $400 cash, no positions, no order history, no options approval, cash (non-margin) account. Mandate from the account owner: trade the account with the goal of growing it, with all reasoning documented in this vault.

## Reasoning chain

1. **Constraint scan.** $400, cash account, equities only. This immediately rules out options strategies, shorting, margin, and makes high-frequency approaches uneconomical (settlement rules + spread costs). Whatever the strategy, turnover must be low and instruments must be near-zero-spread.
2. **Edge audit.** The only edges accessible here are the durable, documented factor anomalies. Among them, momentum (relative + absolute) has the strongest out-of-sample and cross-asset record, and it is implementable with 2 ETF positions and ~1 trade decision per month. Adopted as [[Dual Momentum Rotation]]; hard limits in [[Risk Rules]].
3. **Signal run.** Pulled 53 weeks of weekly bars for the 8-ETF universe; computed the 13/26/52-week composite. Result: IWM #1 (+14.99), EEM #2 (+11.49), both above the BIL hurdle → deploy both slots. Full table in [[2026-07-29 Momentum Rankings]].
4. **Execution.** Market open (9:52 AM ET, ~20 min after the bell). Both orders simulated first — no broker alerts, spreads ~1–2 bp. Placed as dollar-based market orders ($195 each), the only order form Robinhood allows for fractional sizing.
5. **Outcome.** IWM filled instantly at $291.90 (slightly inside the reviewed ask) — [[2026-07-29 IWM Buy]]. EEM was **blocked** by a Robinhood regulatory gate: the account's investor profile must be completed before a second trade — [[2026-07-29 EEM Buy (blocked)]]. Not retryable by the agent; requires the owner.

## End-of-session state

- IWM 0.668037 sh (cost $195.00) + $205.00 cash.
- Blocked EEM leg documented with a standing-intent rule (fresh quote, and fresh signal if delayed).
- Next mechanical action: September monthly rebalance, unless the profile is completed sooner (then: fill the EEM slot).

## What I deliberately did not do

- No single-stock picks, no "hot" trades, no options — no edge, unbounded downside for this account size.
- Did not override the EEM selection despite its decelerating 13-week leg and near-tie with QQQ — the rules run the account, not in-the-moment judgment.
- Did not promise a profit. The vault's [[Risk Rules]] state the honest expectation and the −25% circuit-breaker.
