---
tags: [strategy, active]
status: active
adopted: 2026-07-29
supersedes: "[[Dual Momentum Rotation]]"
---

# Aggressive Leveraged Momentum v2

Adopted 2026-07-29 on the owner's explicit instruction: **"I want much more aggressive trading. Options also."** This supersedes [[Dual Momentum Rotation]] (retired same day it was deployed; see [[2026-07-29 Mandate Change to Aggressive]]).

Aggression here means concentration, leverage, faster cadence, and an options overlay — **not** abandoning systematic rules. Every dial is turned up, but each position still has a documented reason and a mechanical exit.

## Rules

1. **Selection universe (underlyings):** SPY, QQQ, IWM, EFA, EEM, GLD, TLT, **SMH** — ranked by the same 13/26/52-week composite as v1.
2. **Concentration:** 100% of the account in the **single top-ranked** asset (v1 held top 2 at 50/50).
3. **Leverage switch:** hold the **3x leveraged version** of the top asset (UPRO/TQQQ/TNA/SOXL) **only when the underlying's trailing 4-week return is positive**; otherwise hold the **1x** ETF. Rationale: 3x products compound daily returns — in falling, high-volatility regimes they bleed via volatility decay, so leverage is applied only with short-term trend confirmation (same logic as Gayed's *Leverage for the Long Run*: leverage works in low-vol uptrends).
4. **Absolute momentum gate (unchanged):** if the top asset's composite < BIL's, the account goes to cash. Leverage never overrides the gate.
5. **Cadence:** signals recomputed **weekly** (first trading day of the week), plus immediately after any mandate/capital change.
6. **Options overlay (pending approval):** once the account has option_level ≥ 2, up to **50% of account value** may be deployed in long calls (single-leg; the agent API cannot place spreads) on the top-ranked underlying **when the leverage switch is ON** — i.e., options amplify confirmed trends, they don't bottom-fish. Contract selection: ~0.50–0.65 delta, 45–90 DTE, liquid chains only (penny-wide markets), always limit orders at mid or better. Max loss = premium, sized so a 100% loss of the options sleeve cannot trip the [[Risk Rules]] circuit-breaker on its own.
7. **Execution:** unchanged from v1 — review before place; market orders only on penny-spread instruments during regular hours; fractional sizing via dollar-based orders.
8. **Cash-account settlement:** proceeds settle T+1. Positions bought with unsettled funds are never sold same-day (good-faith-violation rule). Practical effect: rotations complete over two sessions — sell day, buy day.

## Signal state — 2026-07-29

See [[2026-07-29 Momentum Rankings v2]]. Summary: SMH ranks #1 (+48.8% composite) but its 4-week trend is −8.2% → **leverage switch OFF** → target = 100% **SMH (1x)**. SOXL engages only when semis' 4-week trend turns positive on a weekly check.

## Honest expectations under this mandate

- 100% SMH is a single-sector bet with ~2× the volatility of the v1 book; ±$25–60 weeks on $400 will be normal, and worse is possible.
- When SOXL engages, daily swings of ±5–10% of the whole account are routine, and gap risk is real.
- The strategy can be whipsawed: sold at a 4-week low, forced back in higher. That is the price of the trend filter, accepted ex-ante.
- Long options are negative-expectation instruments in isolation (theta); the overlay only makes sense as trend amplification and can go to zero. It is sized so that outcome is survivable.

## Change log

- 2026-07-29 — Adopted. v1 positions liquidated ([[2026-07-29 Rotation Sells]]); SMH deployment scheduled for 2026-07-30 after settlement.
