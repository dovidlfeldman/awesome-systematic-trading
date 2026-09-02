---
tags: [trade, run, no-action]
date: 2026-09-02
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-02 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $842.96 (equity $426.33 + options $318.00 + cash $98.63), +29.6% vs $650.54 contributed (−7.3% vs $909.02 if the disputed cash is a deposit) |
| Circuit-breaker | $325 — account at 2.59× ($517.96 headroom) — clear |
| Positions | XLE 6.564494 sh @ $62.53 avg ($410.50 basis), mark $64.945 → $426.33 (unrealized **+$15.83**) |
| Options sleeve | **held** — 1× XLE Nov 20 $65C, 79 DTE, 20d **+13.3%**, mark $3.175 (basis $3.15, +$2.50) |
| Sleeve tests | 20d-return test: **pass** (+13.3%, must turn negative to fire) · <21-DTE test: **pass** (79 DTE, 58 days of slack) |
| Settlement guard | not binding |
| **Traded** | **none — no exit condition met** |

The first intraday check with an actual options position to manage. Ran the breaker first:
account value $842.96 against a $325 breaker is 2.59× — clear by $517.96, and clear on the
alternate denominator too (1.85× against the $454.51 the unconfirmed-deposit reading would
imply). No emergency, so no liquidation.

Then the sleeve, which is the only thing this check can act on. Both §2 close conditions were
tested against fresh data and both passed, neither closely:

- **20-day return.** XLE at $64.945 (live 12:30 mark) against its close 20 sessions back —
  $57.31 on 2026-08-05 — is **+13.3%**, up from the +10.68% the 9:30 cycle scored on the
  09-01 close. The test fires only when this turns *negative*; XLE would have to fall below
  $57.31, a −11.8% move, for that. Nothing close. XLE is in fact up +0.27% on the session
  ($64.77 → $64.945) and made a new high for the move this morning.
- **DTE.** Nov 20 expiry is **79 days** out. The floor is 21, so there are 58 days of slack —
  this test cannot fire before ~2026-10-30. Worth restating after this morning's lesson: the
  09-01 note's Oct 16 pick died on exactly this test overnight. The Nov contract has room the
  Oct one didn't, which is what the extra $108 of premium bought.

The contract itself is essentially flat since the 9:39 ET fill — mark $3.175 vs a $3.15 basis
(+$2.50 on the position), with delta up slightly to 0.549 and the bid/ask a penny-wide 3.10/3.25
on 570 contracts of volume. Nothing about the position's liquidity or pricing argues for an
early exit, and the strategy gives no discretionary reason to take a $2.50 gain.

**No buys and no rotation were made** — that is a rule of this check, not an outcome. The equity
book is untouched by design: XLE remains slot 1 and slot 2 remains in cash (only 1 of 8 names
qualified this morning), but neither of those is re-decided here. Rotation is the 9:30 cycle's
job alone, and the only thing that sells an equity intraday is a tripped breaker, which did not
happen. The settlement guard never came into play — no protective close was owed, and in any
case the sleeve was bought this morning on fully settled cash.

Carrying into the 15:45 check: the live risk is not the sleeve's own tests, which have wide
margins, but **concentration** — XLE is now ~88% of the account across two legs that move
together, and its RSI was 70.5 and rising at the open. If it prints 75 by tomorrow's re-rank,
slot 1 empties and the sleeve's slot-1 close condition fires at the same moment, on the same
name. That collision is tomorrow's problem, but it is the one to watch.
