---
tags: [trade, run, no-action]
date: 2026-09-21
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-21 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $712.32 (equity $710.31 + cash $2.01), −21.6% vs $909.02 contributed |
| Circuit-breaker | $454.51 — account at 1.57× ($257.81 headroom) — clear |
| Positions | SMH 0.588900 sh @ $564.1699, marked $592.29 (unrealized +$16.56); TQQQ 4.623601 sh @ $71.8574, marked $78.1718 (unrealized +$29.20) |
| Options sleeve | empty |
| Sleeve tests | 20d-return test: n-a · <21-DTE test: n-a |
| Settlement guard | not binding |
| **Traded** | **none — no exit condition met** |

Checked the breaker first, before anything else: the account is **$712.32** against a
**$454.51** breaker — **1.57×, $257.81 of headroom**, the widest reading since 2026-09-16 and up
from 1.52× at this morning's cycle. Nowhere near §7.

**Nothing traded, and the reason is specific to each rule.** §1 did not fire because the breaker
is clear by a quarter of the account. §2 had nothing to act on because **the options sleeve is
empty** — it has been since the 09-17 coupled unwind — so both of its tests are **n-a rather than
passing**; there is no contract whose underlying's 20-day return could turn negative and none that
could fall through 21 DTE. §3 forbids this check from touching the equity book at all: SMH and
TQQQ are the 9:30 cycle's call and the only thing that could sell them here is a tripped breaker.
**No buys and no rotation were made — that is a rule of this check, not an outcome.**

Broker-verified the book rather than trusting this morning's note: **zero orders on the day** in
both the equity and option ledgers, **zero option positions**, nothing pending, and
`unsettled_funds` **$0.00** — Friday's two legs settled on schedule exactly as the 9:30 cycle
found, so both are freely sellable. The settlement guard is therefore **not binding** in either
sense: no sale was owed, and none would have been blocked if one had been.

**The book is having its best session since it was bought.** SMH **+3.37%** at $592.29 (from a
$573.00 close) and TQQQ **+7.62%** at $78.1718 (from $72.64); combined unrealized **+$25.35 →
+$45.83**, and the account is up **$20.48 since 9:31 on marks alone with nothing bought or sold.**
Third live reading on the leverage and the cleanest yet: **QQQ +2.52% translated into TQQQ +7.62%,
a 3.02× move**, against 3.5× on 09-18's downside and 2.85× on its upside — the wrapper is tracking
its multiple. TQQQ's **+$29.20 is 64% of the book's gain** off 50% of the book.

Both legs pass the §3 trend filter wide on live prices — **SMH +6.18% over its 20-SMA** ($557.82)
and **QQQ +3.59% over its** ($713.24) — so nothing is near the kind of failure that would hand
tomorrow's cycle a sell. **The §5/§3 conflict opened 09-18 moves further from live**: QQQ's 4-week
trend is positive on both measures and wider again (**+3.56%** 20-trading-day, **+4.61%**
28-calendar-day, vs +1.48%/+1.12% at the open), so §5's hold and §3's leverage gate still agree.
**That conflict remains an open question with no owner decision** — it is not in [[Decisions]], and
nothing here treats it as resolved.

Two things came close to mattering and neither is this check's business. **The sleeve's entry gate
is open wider than at 9:30** — SMH's 20-day return runs **+5.69%** on live prices (base $560.42)
against **+1.84%** on the settled bar — but an entry is a buy and out of scope, and the arithmetic
that blocked it this morning has if anything worsened: the conforming Nov 20 $585C marked
**9.66× the §4 cap** at $3,342.50, and SMH has risen 3.4% since. **SMH's leverage switch is open on
both measures too**, so the next slot-1 buy still points at SOXL and ~100% of the book in 3x
wrappers — a buy-time rule, recorded again ex-ante, not acted on. Concentration stays §2-compliant:
two tranches at **$348.80 and $361.44**, $12.64 apart, both from the system's top-2 ranking, the gap
widened purely by TQQQ outrunning SMH.
