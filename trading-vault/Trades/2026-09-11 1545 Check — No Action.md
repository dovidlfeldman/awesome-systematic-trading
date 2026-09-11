---
tags: [trade, run, no-action]
date: 2026-09-11
slot: "1545"
kind: check
outcome: No Action
---

# 2026-09-11 1545 Check — No Action

| | |
|---|---|
| Ran | 15:45 ET |
| Account | $723.45 (equity $106.27 + options $266.00 + cash $351.18), **+11.2%** vs $650.54 contributed *(−20.4% vs $909.02 if the disputed cash is a deposit)* |
| Circuit-breaker | $325 — account at **2.23×** ($398.45 headroom) — clear |
| Positions | XLE 1.632641 sh @ $65.54 basis, marked $65.085 (unrealized **−$0.74**) |
| Options sleeve | **held** (70 DTE, 20d **+6.64%**) — 1 XLE Nov 20 $66C, 0.499Δ, $295.00 cost / $266.00 mark |
| Sleeve tests | 20d-return test: **pass** (+6.64% to live, +6.39% on completed bars — needs negative) · <21-DTE test: **pass** (70 DTE vs a 21 floor) |
| Settlement guard | not binding — no sale was due, and the call was bought 09-10 on settled cash |
| **Traded** | **none — no exit condition met** |

## What was checked

**Breaker first, as always.** `get_portfolio` reports total value **$723.4486** against the $325
breaker — **2.23×**, $398.45 of headroom. Clear, so no liquidation path opens and the §6 settlement
guard keeps its normal force. The account slipped from **2.27× at 12:30** to 2.23× purely on the
call's mark; the equity leg and cash are unchanged.

**Sleeve — both tests re-read from the tape, both pass wide.** Fetched 65 daily XLE bars
(2026-06-05 → 2026-09-10) and scored the 20-day return the same way the 9:30 cycle did: the 09-10
close of **$64.93** against the close 20 sessions earlier (08-12, **$61.03**) is **+6.39%**; marked
to XLE's live **$65.085** it is **+6.64%**, up from +6.94% at midday only because the midday print
was higher, not because the base moved. The test fires on a *negative* 20-day return, so it is
passing by **664 basis points** — percentage points of margin, not the calendar noise that has been
flipping SMH's gate back and forth all week. The contract expires 2026-11-20, **70 DTE** against a
21-day floor: 49 days of margin. Neither test is near firing, so the sleeve was left alone.

**The call is down and that is not a reason to sell it.** The Nov 66C marks **$2.655/$2.66**
(bid $2.61 × ask $2.70) against a $2.95 fill — **−$29.00**, worse than the −$16.00 at 12:30 and
worse than the −$22.00 at yesterday's close, and delta has settled at **0.4987** from 0.529 at
entry. This is the sleeve's worst mark since the position was opened. It is still **not a close
condition**: [[Risk Rules v2]] §4 and the v3 sleeve spec close on the underlying's trend, on DTE,
or on slot 1 changing hands — never on a mark-to-market drawdown. No stop was invented mid-run,
consistent with yesterday's close check. Theta is −$0.024/day, so the drift is largely time decay
on a 70-day contract that has held two sessions.

**Equities — no action, by rule.** XLE closes the week strong on the §3 trend filter: at $65.085 it
sits **$1.57 (2.47%) above its $63.5145 20-SMA**, wider than the $1.42/2.23% the cycle measured this
morning. It is still the sole qualifier and rank 1, so nothing about slot 1 is in question and the
sleeve's third close condition (a name outranking XLE) cannot fire either. **No buys and no rotation
were made — that is a rule of this check, not an outcome.** Slot 2 stays in cash; the $349.07 of
SMH proceeds are unsettled until Monday and deploying them would be a 9:30 decision regardless.

**What came closest to firing: nothing in the sleeve — but the round-trip risk hardened.**
**SMH closed the check at $569.055, +1.57% on the day and $2.25 (+0.40%) above the $566.80 the
cycle sold it at this morning.** The gap held all session, which is the condition the forward plan
flagged: on Monday's scoring SMH very likely re-qualifies, becomes the obvious slot-2 buy, and the
book pays a spread plus a settlement cycle plus a realized −$6.93 to end where it started Friday.
**This is now the third consecutive check to log it and decline to act** — re-entering is a buy, and
buys are out of scope here. It is the cleanest case yet for the rank-boundary hysteresis band
proposed on 09-04, and **the owner decision is wanted before Monday's open, because Monday is when
it costs money.**

**No GFD close from earlier today needed re-placing** — `get_option_orders` for 2026-09-11 shows
zero options orders, so there was nothing expired-unfilled to re-price at the current mid.

Fourth check in a row with a live sleeve to manage, and the fourth to hold it. Both risk tests have
passed by percentage points every time.
