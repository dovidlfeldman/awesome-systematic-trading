---
tags: [trade, run, no-action]
date: 2026-09-10
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-10 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $731.47 (equity $452.36 + options $277.00 + cash $2.11), +12.4% vs $650.54 contributed |
| Circuit-breaker | $325 — account at 2.25× ($406.47 headroom) — clear |
| Positions | XLE 1.632641 sh @ $65.5400 basis, mkt $65.195 (unrealized −$0.56) · SMH 0.615853 sh @ $578.0600 basis, mkt $562.26 (unrealized −$9.73) |
| Options sleeve | **held** — 1 XLE Nov 20 $66C, 71 DTE, XLE 20d **+6.82%**; marked $2.77 vs a $2.95 fill (**−$18.00**) |
| Sleeve tests | 20d-return test: **pass** (+6.82%, needs negative to fire) · <21-DTE test: **pass** (71 DTE, floor 21) |
| Settlement guard | not binding (`unsettled_funds` $0.0000; nothing was sold) |
| **Traded** | **none — no exit condition met** |

## What was looked at

**Breaker first.** `get_portfolio` before anything else: total $731.47 against the $325 breaker
(50% of the $650.54 contributed capital in [[Risk Rules v2]] §7) — **2.25×, $406.47 of headroom**.
Down from 2.31× at this morning's cycle, entirely on SMH's slide, nowhere near the line. *(Against
the $454.51 breaker the disputed +$258.48 deposit would imply, the account is at 1.61× — still
clear. That reading remains unconfirmed by the owner.)*

**The sleeve, which is the only thing this check can trade.** The XLE Nov 20 $66C opened at
9:35 this morning is the first position an intraday check has had to manage since 09-04, and
both close conditions in the canonical check are wide:

- **20-day return.** XLE last traded **$65.195**. Twenty sessions back is the **08-12 close,
  $61.03**, so the 20-day return is **+6.82%**. The test fires only when this turns *negative* —
  it is 682 bp the wrong side of that. Note the number moved from **+7.19%** at 9:30 for two
  reasons, neither of them a decline of consequence: XLE is **−0.18%** on the session ($65.31 →
  $65.195), and the window rolled off the 08-11 close ($60.93) and picked up 08-12's ($61.03),
  lifting the base by a dime. This is the same calendar-noise mechanic the last four notes have
  flagged on SMH; here it is immaterial because the margin is percentage points, not basis points.
- **Days to expiry.** Nov 20 is **71 DTE** against a 21-day floor. It was 71 DTE this morning and
  will not approach the floor until late October.

Nothing came close to firing. The sleeve is **−$18.00** on the day (mark $2.77 vs the $2.95 fill,
0.504Δ, IV 25.6%) — a normal first-session drift on a 0.50Δ call whose underlying is flat-to-down,
not a risk event, and **drawdown is not a close condition** under [[Risk Rules v2]] §4 or v3 §9.
Worth recording that the contract has traded **108 lots today against 6 open interest** — thin, but
it is a real book ($2.72 × $2.82, a penny-wide-ish 10¢ spread on a $2.77 mark), which is exactly the
liquidity screen this morning's note added after rejecting the 0-OI Oct 30 expiry.

**Equities: looked at, deliberately not acted on.** **SMH is −2.09% at $562.26** and now sits
**$3.44 (0.61%) below its 20-SMA of $565.70** — on current prices it would fail the v3 §3 trend
filter and lose slot 2 at tomorrow's re-rank, precisely the risk this morning's forward plan named
as item 1. Its **20-day return has also flipped hard negative, +0.24% at 9:30 → −3.86% now** (price
down, and the base rolled from 08-11's $572.93 to 08-12's $584.83), which shuts the leverage switch
that was armed-but-not-taken this morning — SOXL, down 6.5% at the open, continues to look like the
right refusal. **XLE by contrast passes §3 wide at $1.88 (2.96%) over its $63.32 20-SMA.**
All of this is logged for the 9:30 cycle to score from fresh bars. **It is not this run's decision:**
rotation is the 9:30 cycle's job alone, and the 09-08/09-09 XLF sequence is the direct evidence that
deferring it costs nothing — both checks flagged XLF below its 20-SMA, both declined, and the cycle
sold it within $0.08 of the flagged price.

**No buys and no rotation were made — that is a rule of this check, not an outcome.** The only
thing that sells an equity at 12:30 is a tripped §1 breaker, and the breaker is clear at 2.25×.
The settlement guard never came into play: `unsettled_funds` is **$0.0000** and no sale was
contemplated. **Nothing traded because both sleeve tests passed by a wide margin and the breaker
is clear** — there was no exit condition to act on.

Note the asymmetry this morning's plan called out is still the live one: if SMH fails tomorrow and
XLE holds rank 1, **the sleeve survives** — it dies only if something outranks XLE, and rank-3 QQQ
is itself below its own trend filter.
