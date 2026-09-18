---
tags: [trade, run, no-action]
date: 2026-09-18
slot: "1545"
kind: check
outcome: No Action
---

# 2026-09-18 1545 Check — No Action

| | |
|---|---|
| Ran | 15:45 ET |
| Account | $669.47 (equity $667.46 + cash $2.01), **−26.4%** vs $909.02 contributed |
| Circuit-breaker | $454.51 — account at **1.47×** ($214.96 headroom) — **clear** |
| Positions | SMH 0.588900 sh @ $566.94 (unrealized **+$1.63**) · TQQQ 4.623601 sh @ $72.15 (unrealized **+$1.35**) |
| Options sleeve | **empty** |
| Sleeve tests | 20d-return test: **n-a** · <21-DTE test: **n-a** |
| Settlement guard | **not binding** — no sale was owed |
| **Traded** | **none — no exit condition met** |

Checked the breaker first, on the broker's number rather than this morning's note: total account value
**$669.47** against a **$454.51** breaker is **1.47×**, $214.96 of headroom, so §7 does not fire and no
liquidation is owed. The account is **up $7.04 since the 12:30 check** ($662.43) and **up $3.06 since
the 9:36 fills** ($666.41) — all of it mark-to-market, since nothing was bought or sold.

**The options sleeve is empty**, so both of its tests are **n-a rather than passing** — there is no
contract whose underlying 20-day return could turn negative and none that could fall under 21 DTE.
Confirmed against the broker (`get_option_positions` returns an empty list), not inferred from the
morning note. With no sleeve position there was no protective close to consider, and step 2 had
nothing to act on.

**Equities: no action, by rule.** Both legs are held and neither was touched. Rotation is the 9:30
cycle's decision alone and this check may not make it; the only thing that could have sold an equity
here is a tripped §1 breaker, and it is clear. **No buys and no rotation were made — that is a rule of
this check, not an outcome of today's prices.**

The **settlement guard did not bind**, because no sale was owed at all. It is worth recording why it
would have: **both positions were bought today (9:35 ET) and settle Mon 2026-09-21**, so selling either
before then is a good-faith violation under §6 — the §1 breaker is the sole exception, and therefore
the only thing that could legally sell this book before Monday. Broker-verified the day's activity:
**exactly two orders, both the 9:35 buys, both filled, nothing pending and no sells**; `unsettled_funds`
reads $0.00 and cash is the designed $2.01 buffer.

Nothing came close to firing. The book closed the week green on both legs: **SMH +1.13% on the session
at $566.94** and **+$2.77/sh above its $564.1699 fill** (+$1.63), recovering the gap-up premium the
midday note flagged when it sat −$0.72/sh below cost; **TQQQ +1.08% at $72.15**, +$0.29/sh above its
$71.8574 fill (+$1.35). Combined unrealized is **+$2.98**, against −$4.06 at midday — a $7 swing on
marks alone.

**Second live reading on the new leverage, and it is the mirror of midday's.** QQQ rose **+0.38%** on
the session and TQQQ returned **+1.08%**, a **2.85×** translation — versus midday's −0.13% → −0.45%
(3.5×) on the downside. The 3x wrapper is tracking as designed in both directions; roughly half the
account still carries it.

**Logged, not acted on: the §5/§3 conflict opened this morning remains dormant and is now further from
being live.** QQQ's 4-week trend is positive and wider again on both measures — **+1.22% on the
20-trading-day reading** (base $710.93, the 08-20 close) and **+0.87% on the 28-calendar-day reading**
(base $713.44, 08-21) — up from +0.71%/+0.36% at midday and +0.12% at the open. §5 (hold while the slot
target is unchanged) and §3 (a 3x wrapper needs a positive trend) therefore still agree, and no
interpretation was needed. **The conflict is an open question with no owner decision** — nothing in
[[Decisions]] addresses it, so if QQQ's trend flips the two rules will disagree and nothing written
resolves it. That question is still open; silence has not answered it.

Also logged and not acted on: **SMH's own 20-day return has turned positive on live prices** — **+0.76%**
on the same 20-trading-day convention (base $562.65) and +1.16% on the 28-calendar-day one — where it
was **−0.06%** on the settled closes this morning, which is what shut both the leverage switch (slot 1
stayed 1x SMH rather than SOXL) and the sleeve's §9 entry gate. **Neither is a check's business:** both
are buy-time rules, and this run may not open a position under any reading. Affordability would block
the sleeve regardless — the conforming contract priced at $3,372.50 against a ~$334 cap this morning,
10× over. The sleeve scorecard is unchanged at **0-for-3, −$218.16**, and realized P&L is unchanged at
**−$242.52**; nothing was closed today.
