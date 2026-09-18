---
tags: [trade, run, no-action]
date: 2026-09-18
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-18 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $662.43 (equity $660.42 + cash $2.01), −27.1% vs $909.02 contributed |
| Circuit-breaker | $454.51 — account at 1.46× ($207.92 headroom) — clear |
| Positions | SMH 0.588900 sh @ $564.1699 (unrealized −$0.42), TQQQ 4.623601 sh @ $71.8574 (unrealized −$3.69) |
| Options sleeve | empty |
| Sleeve tests | 20d-return test: n-a · <21-DTE test: n-a |
| Settlement guard | not binding |
| **Traded** | **none — no exit condition met** |

## What was looked at

**Circuit-breaker first, before anything else.** `get_portfolio` returns **$662.43** total —
equity $660.42, options $0, cash $2.01, pending deposits $0. Against the §7 level of **$454.51**
(50% of $909.02 contributed, confirmed by [[Decisions]] #2) the account sits at **1.46×** with
**$207.92** of headroom. Clear. This is the second check measured against the true level rather
than the stale $325 that every note between 08-28 and 09-17 used.

**The sleeve is empty, so neither of its two tests has anything to evaluate — they are n-a, not
passing.** `get_option_positions` (nonzero) returns an empty list. This morning's cycle was
blocked at the sleeve's *entry* gate — §9 opens only on a positive slot-1 20-day return and SMH's
was −0.06% — and an entry is a buy, which this check may not make under any circumstances. So
there is no protective close to consider, no GFD re-place to chase, and no 20-day bar fetch owed:
step 2 applies "only if the sleeve holds a position," and it does not.

**Equities: no action, by rule.** Both legs were bought at 9:35 this morning and are held. Nothing
about an equity may be sold here except under a tripped §1 breaker, and the breaker is clear by
$207.92. Broker-verified rather than inferred from this morning's note: exactly **two orders on
the day**, both `agentic` buys (SMH 0.588900 sh filled 13:35:05 UTC at $564.1699; TQQQ 4.623601 sh
filled 13:35:09 UTC at $71.8574), both `filled`, nothing pending, nothing cancelled, no sells of
any kind. Position quantities and average costs match the note to the share.

**Settlement guard not binding.** It never comes into play because no sale was owed. Recorded
anyway for the record: `intraday_quantity` equals full quantity on both legs, confirming both were
bought today and **settle Mon 2026-09-21** — neither is sellable before then without a good-faith
violation, and the §1 breaker is the only thing that would override that.

## The book, three hours in

The account is down **$3.98** since the 9:36 mark ($666.41 → $662.43) and every cent of it is
mark-to-market on two positions bought this morning; nothing was bought or sold to cause it.
Combined unrealized is **−$4.06** against a $664.48 cost basis — about six-tenths of one percent,
and roughly what a round trip plus half a session of drift looks like.

The two legs are moving in opposite directions on the day and the *same* direction against their
fills:

- **SMH $563.45** — **+0.51%** on the session (prev close $560.61) yet **−$0.72/sh below this
  morning's $564.1699 fill**, because the 9:35 buy went in after the gap-up rather than at it.
  Unrealized −$0.42.
- **TQQQ $71.06** — **−0.45%** on the session (prev close $71.38) and **−1.11% below the
  $71.8574 fill**. Unrealized −$3.69, which is 91% of the book's entire drawdown.

**The leverage is behaving exactly as specified, in the unflattering direction: QQQ is −0.13% on
the day and TQQQ is −0.45% — a 3.5× translation.** That is the first live datum on the risk
step-up this morning's note flagged, and it is unremarkable: a −$3.69 unrealized loss on a −0.13%
Nasdaq session is the arithmetic working, not a surprise. It also sizes the warning in Home
concretely — the −$207.92 of breaker headroom is being carried against a book where roughly half
moves at 3×.

## Logged, not acted on: the §5/§3 conflict is *not* live today

This morning's cycle opened a rule conflict and left it unanswered — [[Staggered Daily Swing
Rotation v3]] §5 says hold while the slot target is unchanged, §3 says a 3x wrapper needs a
positive underlying trend, and nothing written says which governs if QQQ's 4-week trend flips
while TQQQ is held. **That question is still open. No owner decision exists on it**, and this
check would have no authority to resolve it even if the trend had flipped — resolving it is not a
risk exit, and inventing an answer mid-run is exactly the failure [[Decisions]] was created to
stop.

It did not flip. Checked on live prices so the note records a fact rather than an assumption —
QQQ at **$716.01**:

| Measure | Base | Return | 9:30 reading |
|---|---:|---:|---:|
| 20 trading days (base 2026-08-20) | $710.93 | **+0.71%** | +0.12% |
| 28 calendar days (base 2026-08-21) | $713.44 | **+0.36%** | positive |

Both measures are **positive and wider than at 9:30**, and the widening is the window rolling off
the mid-August highs, not QQQ rallying — QQQ is down on the day. The leverage gate that fired this
morning on a 12-basis-point signal would fire more comfortably now. The conflict stays theoretical
for at least another session; it stays **unanswered** regardless.

## Nothing came close to firing

There is no near-miss to report this time, which is itself worth stating plainly. The breaker
would need the account to fall a further **31.4%** intraday. The two sleeve tests have no position
to apply to. The §3 trend test that governs the equity legs is a 9:30 input, not a check input,
and would not authorize a sale here even if a leg were failing it. The only live number moving is
a −$4.06 mark-to-market, and **a mark-to-market drawdown is not a close condition** — the same
answer given on 09-10, 09-11, 09-14, 09-15 and 09-16 when the Nov 66C swung between +$9.00 and
−$85.00.

**No buys and no rotation were made. That is a rule of this check, not an outcome** — rebalancing
belongs to the 9:30 cycle alone, and the next opportunity to act on ranks is Monday 2026-09-21,
which is also the day both legs settle.
