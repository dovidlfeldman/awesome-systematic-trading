---
tags: [trade, run, no-action]
date: 2026-09-14
slot: "1545"
kind: check
outcome: No Action
---

# 2026-09-14 1545 Check — No Action

| | |
|---|---|
| Ran | 15:45 ET |
| Account | $687.98 (equity $456.80 + options $229.00 + cash $2.18), +5.8% vs $650.54 contributed (−24.3% vs $909.02 if the disputed deposit counts) |
| Circuit-breaker | $325 — account at 2.12× ($362.98 headroom) — clear |
| Positions | XLE 1.632641 sh @ $65.54 basis, $64.425 live (unrealized −$1.82) · SMH 0.647844 sh @ $538.7099 basis, $542.59 live (unrealized +$2.51) |
| Options sleeve | held — 1 XLE Nov 20 $66C, 67 DTE, XLE 20d **+4.06%**, mark $2.29 vs $2.95 cost (**−$66.00**) |
| Sleeve tests | 20d-return test: **pass** (+4.06%, needs negative) · <21-DTE test: **pass** (67 DTE, floor 21) |
| Settlement guard | not binding (`unsettled_funds` $0.0000; no close was owed anyway) |
| **Traded** | **none — no exit condition met** |

## What was looked at

**Breaker first, before anything else.** `get_portfolio` returns $687.98 against the $325
breaker — **2.12×, $362.98 of headroom.** Clear, and clear by a wide margin even on the
conservative reading: if the unconfirmed +$258.48 is an owner deposit the breaker moves to
$454.51 and the account is still 1.51× against it. No liquidation condition exists.

**The sleeve passed both of its tests, so it was not touched.** XLE's 20-day return is
**+4.06%** — measured from the 2026-08-14 close of $61.91 to the live $64.425 — and the rule
fires only when that number turns **negative**. The Nov 20 contract has **67 days** to expiry
against a 21-day floor, expiring 2026-11-20. Neither test is close: XLE would have to fall
**−3.90% to $61.91** for the trend test to fire, and the DTE floor is not reached until
**2026-10-30**. Nothing was sold.

**The sleeve's mark is its worst yet, and that is still not a close condition.** The Nov 66C
marks **$2.29 vs a $2.95 fill — −$66.00**, down from −$29.00 at midday, a **$37.50 loss in
three hours**; delta decayed **0.503 → 0.459**. The whole move is XLE's: it went **$65.20 at
12:30 → $64.425 now, −1.10% on the session** from Friday's $65.14 close. This is the exact
inverse of the midday note, where the 20-day decay was entirely the rolling window (base
$61.06 → $61.91) with XLE flat — **today the base is unchanged since lunchtime and the price
did all the work.** A mark-to-market drawdown is not one of the three written close
conditions, and no stop was invented mid-run to manufacture one. The sleeve is now **0-for-2
closed (−$129.12) with trade #3 open at −$66.00**, which was **+$9.00 at this morning's open** —
a $75 round trip inside one session.

**XLE's §3 margin narrowed sharply and is worth watching.** At Friday's close XLE sat
**2.47% above** its 20-SMA; on live prices it is **$64.425 vs a 20-SMA of $63.84 — +0.91%,
$0.58 of room.** It still qualifies, it is still rank 1, and the sleeve survives as long as
nothing outranks it — but the cushion that made the sleeve look safe all last week has
thinned by two-thirds in one session. Logged, not acted on.

**SMH: the ex-ante flag from this morning is now bearing out, and it is still not this run's
call.** SMH is **$542.59, −4.56% on the day**, and **$18.59 (3.31%) below** a 20-SMA of
$561.18 — it fails the §3 trend filter on live prices for the **fifth consecutive check**.
It is nonetheless **+$3.88/sh above the $538.7099 fill** from 9:35, so the position bought
into this morning's gap is marginally green even as the name deteriorates. **Rotation is the
9:30 cycle's decision and this check is forbidden to make it** — the check/cycle division of
labour is 2-for-2 on exactly this pattern (XLF 09-09, SMH 09-11), where a check flagged a
§3 failure a day early and correctly deferred it.

**No buys and no rotation were made. That is a rule of this check, not an outcome** — an
intraday check may only sell to cut risk, and the only conditions that authorize a sale
(the §1 breaker, the sleeve's 20-day trend test, the sleeve's DTE floor) all passed. The
settlement guard never came into play: `unsettled_funds` is **$0.0000**, and SMH — the only
position bought today — was never a candidate for sale here.
