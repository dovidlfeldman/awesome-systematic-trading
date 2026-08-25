---
tags: [trade, rotation]
date: 2026-08-25
---

# Rotation — XLF + SPY out, GLD + XLE in (2026-08-25)

Full two-slot rotation. Both holdings from [[2026-08-05 Daily Signals]] fell out of the target book
simultaneously when index leadership rolled over and hard assets took over. Signal detail in
[[2026-08-25 Daily Signals]].

## Orders (all filled, all `placed_agent: agentic`, all reviewed before placing)

| # | Order | Side | Type | Size | Avg fill | Order id |
|---|---|---|---|---|---|---|
| 1 | XLF | sell | market GFD | 3.051443 sh | $58.1642 | `6a8dbc1a-6068-4a92-9343-c0aaca844751` |
| 2 | SPY | sell | market GFD | 0.252006 sh | $765.4656 | `6a8dbc1b-13cb-4c7f-a343-b30dda1627c5` |
| 3 | GLD | buy | market GFD | $106.31 → 0.249121 sh | $426.74 | `6a8dbc44-6b6b-4f64-9c78-ce84fee00836` |
| 4 | XLE | buy | market GFD | $106.31 → 1.697789 sh | $62.6167 | `6a8dbc46-5229-4ddf-be53-3bf3dc5ff322` |

Fees $0.00 on all four. Fresh UUID `ref_id` per order. All four reviewed via
`review_equity_order` first; `order_checks` was empty `{}` on every one — no broker alerts.
Market orders on penny-spread ETFs during regular hours, per [[Risk Rules v2]] §5.

Compliance quote disclosures at review time (verbatim):

- XLF — `Bid $58.16 × 9400 P · Ask $58.17 × 14300 P · Last $58.165 × 100 V. Updated 12:00 PM ET.`
- SPY — `Bid $765.44 × 40 Q · Ask $765.45 × 240 Q · Last $765.45 × 80 D. Updated 12:00 PM ET.`
- GLD — `Bid $426.70 × 480 P · Ask $426.74 × 80 P · Last $426.72 × 40 Q. Updated 12:01 PM ET.`
- XLE — `Bid $62.61 × 4000 P · Ask $62.62 × 5600 P · Last $62.615 × 200 D. Updated 12:01 PM ET.`

## Realized P&L

| Leg | Basis | Exit | Shares | Realized |
|---|---:|---:|---:|---:|
| XLF (in 2026-08-04) | $57.35 | $58.1642 | 3.051443 | **+$2.48** |
| SPY (in 2026-08-05) | $773.79 | $765.4656 | 0.252006 | **−$2.10** |
| | | | **Net** | **+$0.39** |

XLF was the better trade of the two but gave back most of its gain in the last two sessions
(it peaked well above $58 mid-month while nobody was watching — see the automation gap below).
SPY was a small loser: bought at $773.79 on 08-05, exited $8.32/sh lower.

Cumulative realized after this cycle: **−$64.99** — equity legs **−$1.91**, options sleeve
**−$63.08**. The equity book is now within $2 of flat across 6 cycles; essentially all of the
account's loss is the single [[2026-08-04 Rotation XLE out, XLF in|XLE call round-trip]].

## Settlement discipline

Sell proceeds $370.38 (XLF $177.48 + SPY $192.90) are **unsettled** until 2026-08-26 (T+1) and were
deliberately not spent. Buys used only the $214.63 of already-settled cash that had been idle since
08-05. Post-trade: $2.01 free cash, $370.38 unsettled, `unsettled_funds` confirmed $0.00 *before*
the sells so the settled figure was clean. No good-faith violation exposure.

## Automation gap

This rotation is 14 trading days late. Both prior holdings stopped being top-2 targets at some point
during the outage and nothing sold them; the $214.63 that was reserved on 08-05 for a sleeve re-arm
sat in cash for three weeks. The realized cost of the gap is not directly measurable (the correct
intervening book is unknowable without a full replay), but the book was carrying two positions the
strategy no longer wanted. See [[2026-08-25 Automation Gap]].
