---
tags: [trade, run, no-action]
date: 2026-09-21
slot: "1545"
kind: check
outcome: No Action
---

# 2026-09-21 1545 Check — No Action

| | |
|---|---|
| Ran | 15:45 ET |
| Account | $720.36 (equity $718.35 + cash $2.01), −20.8% vs $909.02 contributed |
| Circuit-breaker | $454.51 — account at 1.59× ($265.85 headroom) — clear |
| Positions | SMH 0.588900 sh @ $564.1699 → $597.69 (unrealized +$19.74); TQQQ 4.623601 sh @ $71.8574 → $79.24 (unrealized +$34.13) |
| Options sleeve | empty |
| Sleeve tests | 20d-return test: n-a · <21-DTE test: n-a |
| Settlement guard | not binding |
| **Traded** | **none — no exit condition met** |

## What was looked at

**§1 first, as always.** `get_portfolio` reads **$720.36** total — equity $718.35, options $0, cash
$2.01. Against the **$454.51** breaker that is **1.59×** with **$265.85** of headroom: clear, and the
widest reading since the breaker was restated to its true level on 2026-09-17 ([[Decisions]] #2 —
prior readings under that level: 1.47×, 1.47×, 1.46×, 1.47×, 1.52×, 1.57×). Nothing close to a
liquidation.

**§2 is n-a, not passing.** `get_option_positions` returns an empty list — the sleeve has been empty
since the 09-17 coupled unwind, so this is the **sixth consecutive check** with no contract to test.
Both the 20-day-return test and the 21-DTE test are **n-a**: there is no underlying and no expiry to
measure. Nothing in §2 can fire against an empty sleeve, and nothing was placed to change that —
opening the sleeve is a *buy*, which this check may never do.

**§3 — equities, no action, and the book gave no reason to want one.** Broker-verified rather than
inferred from this morning's note: `get_equity_orders` and `get_option_orders` both return **zero
orders on the day**, nothing pending, no sells — consistent with the 9:30 cycle's no-trade outcome
and the 12:30 check. Both legs are held exactly as Friday's buys left them. On live prices both pass
§3 by wide margins — **SMH $597.69 is +6.79% over its 20-SMA ($559.69)** and **QQQ $742.35 is +3.87%
over its ($714.68)** — so even the once-daily rotation this check is forbidden to make would have had
no seller to name. Rotation is the 9:30 cycle's call regardless; this is logged, not acted on.

**§4 settlement guard — not binding.** `get_accounts` reads `unsettled_funds` **$0.00** on the
agentic account, broker-verified rather than taken from a calendar. No protective close was owed, so
nothing was blocked for GFV; had one been owed, Friday's legs settled this morning and would have
been freely sellable.

**§5 order hygiene — n-a.** No orders were reviewed and none placed. No UUID was minted.

## The session, for the record

**The book's best day since it was bought, and it kept going after midday.** SMH closed the stretch
**+4.31%** on the session ($573.00 → $597.69, from +3.37% at 12:30) and TQQQ **+9.09%** ($72.64 →
$79.24, from +7.62%). Combined unrealized **+$25.35 at 9:30 → +$45.83 at midday → +$53.87 now** — the
account is up **$8.04 since the 12:30 check and $28.52 on the day, every cent of it marks, with
nothing bought or sold.** Both legs are green on cost for a second consecutive check.

**Fourth live leverage reading, and the tightest cluster yet: QQQ +2.90% → TQQQ +9.09%, a 3.14×
translation** (vs 3.02× at midday, 2.85% and 3.5× on 09-18). The 3x wrapper is tracking its mandate
closely in both directions. Worth restating plainly while it is working in the account's favour: the
same 3.14× applies to a down session, and roughly half the book carries it.

**Nothing came close to firing.** With the sleeve empty there is no §2 condition that *can* fire, and
the §1 breaker would need the account to fall **$265.85 (−36.9%)** in fifteen minutes. The only
number that moved toward any line today moved away from it.

**Logged, not acted on — all buy-time rules, all out of scope for a check:**

- **The sleeve's entry gate is wider open than at any point today** — §9 needs the slot-1
  underlying's 20-day return positive, and SMH's is **+6.65%** on live prices (base $560.42), from
  +5.69% at midday and +1.84% on the settled close. It stays blocked on price, not signal: this
  morning's only conforming contract (Nov 20 $585C, 0.532Δ, 60 DTE) marked **$3,342.50 against a
  $345.92 §4 cap — 9.66×** — and SMH has risen 4.3% since, which moves the premium the wrong way. No
  rank reasoning entered this; the sleeve does not read rank ([[Decisions]] #1).
- **SMH's leverage switch stays open on both measures** (+6.23% 20-trading-day). The flagged
  consequence is unchanged: the **next** slot-1 buy takes SOXL and would put ~100% of the book in 3x
  wrappers. No buy is due — settled cash is $2.01 — so nothing happened, and this remains recorded
  ex-ante rather than acted on.
- **The §5/§3 conflict opened 2026-09-18 moves further from live for a fourth straight reading** —
  QQQ's 4-week trend is **+4.42%** (20-trading-day), wider than midday's +3.56% and the open's
  +1.48%. It is still an **open question with no owner decision**: nothing in [[Decisions]] answers
  it, and this note does not treat any prior recommendation as though it did.

**No buys and no rotation were made — that is a rule of this check, not an outcome.** The one thing
that could have sold anything today was the §1 breaker, and it is clear at 1.59×.

## Forward

Tomorrow's 9:30 cycle re-scores all eight names on tonight's close and owns every rotation decision.
On live prices SMH (+5.41% 10-day) and QQQ (+3.25%) are both strong and both legs pass §3 wide, so
the likely outcome is another hold — but that is the cycle's call on settled bars, not this check's,
and ranks are not scored here.
