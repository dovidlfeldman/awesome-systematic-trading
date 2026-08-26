---
tags: [trade, filled]
date: 2026-08-26
symbols: [GLD, XLE]
---

# 2026-08-26 — GLD + XLE Top-Up (settled proceeds deployed)

Both legs **filled**. Signal: [[2026-08-26 Daily Signals]]. Strategy:
[[Staggered Daily Swing Rotation v3]] §6. Risk: [[Risk Rules v2]] §2, §6.

## Why

Not a rotation — the target book was unchanged (GLD slot 1, XLE slot 2, both re-confirmed as the
only names with positive 10-day momentum). This was purely a **funding** trade.

Yesterday's full two-slot rotation ([[2026-08-25 Rotation XLF+SPY out, GLD+XLE in]]) sold XLF and
SPY for $370.38, but that cash was unsettled at the time, so the replacement buys could only be
sized from the $214.63 that was already settled. The book went into last night ~64% in cash by
accident of the settlement calendar, not by signal. The proceeds settled overnight
(`unsettled_funds` = $0.00, buying power $372.39), so today deploys them into the slots they were
always meant to fund.

Split roughly equally to keep the two tranches at matching weight, $2.01 retained as buffer.

## Orders

| Leg | Side | Amount | Shares | Avg fill | Order id |
|---|---|---:|---:|---:|---|
| GLD | buy | $185.19 | 0.437465 | $423.325 | `6a8eeb97-8f40-45d2-9c2e-8e7f8fc9fb31` |
| XLE | buy | $185.19 | 3.002086 | $61.6871 | `6a8eeb9c-59dd-4d41-9b1c-1ecad4ea0426` |

Dollar-based market orders, regular hours, GFD, `placed_agent: agentic`. Fresh UUID `ref_id` per
leg. Both reviewed first — `order_checks` empty on both, no broker alerts. Both filled within
~0.2s at the inside market. **Fees $0.00.**

Quotes at review (compliance disclosure, verbatim):

- GLD — `Bid $423.32 × 40 P · Ask $423.37 × 560 P · Last $423.325 × 100 D. Updated 9:35 AM ET.`
- XLE — `Bid $61.70 × 1900 P · Ask $61.71 × 600 P · Last $61.71 × 100 Q. Updated 9:35 AM ET.`

GLD filled at $423.325 — inside the $423.32/$423.37 spread. XLE filled at $61.6871, a fraction
under the $61.70 bid. No slippage worth recording on either.

## Resulting position

| Slot | Symbol | Shares | Avg cost | Basis |
|---|---|---:|---:|---:|
| 1 | GLD | 0.686586 | $424.56 | $291.51 |
| 2 | XLE | 4.699875 | $62.02 | $291.50 |

Account $582.17 — equity $580.16, cash $2.01. Fully deployed, ~50/50 across the two slots.

## Hygiene notes

- **Settled funds only.** Verified `unsettled_funds` = $0.00 on the account before sizing, not just
  inferred from buying power. No GFV exposure.
- **No sells today**, so realized P&L is unchanged at **−$64.99**.
- Both positions now carry intraday quantity. They are owned outright (bought with settled cash),
  so they *can* be sold tomorrow without a good-faith violation — but the proceeds would be
  unsettled, so a rotation tomorrow could sell but not immediately redeploy. The tranche stagger
  stays collapsed until one slot rotates alone.
- Timing: launchd fired at 9:30 ET; orders deliberately held until 9:35 per the cycle's
  open-volatility gate. Read-only work (breaker, signals, sleeve check) ran during the wait.
