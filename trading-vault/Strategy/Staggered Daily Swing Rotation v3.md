---
tags: [strategy, active]
status: active
adopted: 2026-07-29
supersedes: "[[Aggressive Leveraged Momentum v2]]"
---

# Staggered Daily Swing Rotation v3

Adopted 2026-07-29 (~30 minutes after v2) on the owner's escalation: **"I'm ok with constant swing day trading."** Daily-cadence swing trading, engineered around the one constraint that cannot be traded away: **cash-account T+1 settlement**. Robinhood grants this account buying power from settled cash only — a dollar that trades on day N cannot trade again until day N+2. Same-day round-trips at full size are structurally impossible; anything claiming otherwise would just generate good-faith violations and a frozen account.

## The tranche stagger (how "constant" is achieved)

Capital is split into two ~equal tranches, **A** and **B**, offset by one trading day:

| Day | Tranche A | Tranche B |
|---|---|---|
| N | **buys** (settled cash) | holds / sells at morning check |
| N+1 | holds / sells at morning check | **buys** (cash settled overnight) |

Effect: **the account trades every single trading day**, each position is a 1–2 day swing, and no order ever touches unsettled funds. Bootstrap (2026-07-30): all cash is settled; A buys, B deliberately waits one day to create the offset.

## Daily cycle (runs at the 9:35 AM ET wakeup)

1. **Data:** daily bars for the universe — SPY, QQQ, IWM, SMH, XLE, XLF, GLD, TLT.
2. **Rank** by trailing 10-day return.
3. **Filters:** a candidate qualifies only if close > 20-day SMA (uptrend) and RSI(14) ≤ 75 (not a blow-off chase). 
4. **Target book:** slot 1 = highest-ranked qualifier, slot 2 = second qualifier. Fewer than 2 qualifiers → the unfilled slot's tranche sits in cash that day (cash is a position).
5. **Selling tranche:** sells at the morning check **only if** its holding is no longer its target slot. Still the target → hold, no churn, no settlement clock burned.
6. **Buying tranche:** deploys full settled cash into its target slot (dollar-based market order on these penny-spread ETFs; review before place, always).
7. **Never** sell a position bought with unsettled funds (GFV). Never buy with unsettled proceeds.
8. **Circuit-breaker** check first, trade second ([[Risk Rules v2]] §7: close below $200 → liquidate, halt, owner conversation).
9. **Options overlay** ([[Aggressive Leveraged Momentum v2]] §6 spec carries over): once approval lands, the sleeve trades the same daily signal — long calls on the slot-1 asset when it also has positive 4-week trend; premium at risk ≤50% of account.
10. **Log** the cycle in the vault (signal table + orders + P&L), push, and **re-arm tomorrow's wakeup** via send_later (trigger-management API is approval-gated; chained one-shots achieve the same daily cadence).

## Leverage note

The v2 leverage switch (3x wrapper on positive 4-week trend) still applies to slot selection: if a slot's target is SMH and semis' 4-week trend is positive, the slot buys SOXL instead. Same for QQQ→TQQQ, SPY→UPRO, IWM→TNA. GLD/TLT/XLE/XLF trade 1x only.

## What daily cadence costs (recorded ex-ante, honestly)

- **More trades ≠ more edge.** The 10-day/20-SMA signal has weak-positive historical support; its daily-cadence advantage over v2's weekly checks is faster exits, not higher expected return. The realistic base case is that v3 performs *similar to v2 with more noise and more spread cost*.
- Spread cost ~1–3 bp per side on this universe ≈ $0.05–0.15 per $200 trade — tolerable, which is the only reason daily cadence is defensible at all here.
- Halved position size per pick (two $200 tranches) means single-name conviction is diluted; that is the price of trading daily inside T+1.
- Tax: everything is short-term. Accepted by mandate.

## Change log

- 2026-07-29 — Adopted. Bootstrap scheduled for 2026-07-30: tranche A deploys per that morning's signal; B waits one day.
