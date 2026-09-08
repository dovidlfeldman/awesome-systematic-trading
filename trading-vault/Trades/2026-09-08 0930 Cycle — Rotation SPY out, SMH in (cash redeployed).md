---
tags: [trade, run, traded]
date: 2026-09-08
slot: "0930"
kind: cycle
outcome: Rotation SPY out, SMH in (cash redeployed)
---

# 2026-09-08 0930 Cycle — Rotation SPY out, SMH in (cash redeployed)

| | |
|---|---|
| Ran | 09:30 ET (reads) → orders 09:35:17–09:35:38 ET |
| Account | $763.98 (equity $710.88 + cash $53.10), **+17.4%** vs $650.54 contributed |
| Circuit-breaker | $325 — account at **2.35×** ($438.98 headroom) — clear |
| Signals | rank 1 **SMH** (+1.18% 10d, RSI 51.0), rank 2 **XLF** (+1.08% 10d, RSI 55.5) — 5 of 8 qualify |
| Target book | slot 1 **SMH**, slot 2 **XLF** |
| Held | **XLF** — demoted slot 1 → slot 2, held (not churned) and topped up |
| **Traded** | **3 orders, 3 fills** — see table |
| Options sleeve | **empty — gate shut on its own trend filter**: SMH 20d is **−2.69%**, entry needs > 0 |
| Realized / unrealized P&L | **−$0.26** today (**−$143.64** to date) / **−$1.42** |
| Blocked | none |

## Orders

| # | Sym | Side | Type | Size | Fill | Value | `ref_id` | Order id |
|---|---|---|---|---|---|---|---|---|
| 1 | SPY | sell | market GFD | 0.0625 sh | **$768.6601** | $48.04 | `3529a03d-538c-440a-a8b9-b75a932e5134` | `6aa00f15-cdf5-41ed-95e8-943ab59f255a` |
| 2 | SMH | buy | market GFD | $356.00 → 0.615853 sh | **$578.0599** | $356.00 | `6d3f0244-8742-4eec-88d4-63c992be803c` | `6aa00f21-0775-4a87-b9fb-1f7b71cc48b5` |
| 3 | XLF | buy | market GFD | $308.00 → 5.338889 sh | **$57.6899** | $308.00 | `71191f86-3733-477a-acdb-73c118117154` | `6aa00f2a-1191-4776-a388-2ecd42fa3f3e` |

Every order reviewed before placing; all three came back with **`order_checks: {}`** — no broker
alerts. Fills landed in **0.12s, 0.22s and 0.17s** respectively. Verbatim compliance disclosures
from the three reviews:

> Bid $768.66 × 200 P · Ask $768.68 × 240 P · Last $768.68 × 57 P. Updated 9:35 AM ET.

> Bid $578.04 × 40 P · Ask $578.25 × 160 Q · Last $578.11 × 100 P. Updated 9:35 AM ET.

> Bid $57.64 × 3300 Q · Ask $57.65 × 900 P · Last $57.645 × 100 P. Updated 9:35 AM ET.

**Resulting book** (marks at 09:36 ET):

| Slot | Position | Cost | Mark | Value | Unrealized |
|---|---|---|---|---|---|
| 1 | **SMH** 0.615853 sh @ $578.0599 | $356.00 | $576.56 | $355.08 | −$0.92 |
| 2 | **XLF** 6.168808 sh @ $57.7561 | $356.30 | $57.69 | $355.88 | −$0.42 |
| — | Cash | | | $53.10 | |

**The two tranches are within $0.80 of each other** — the first time this account has held a
genuinely balanced two-slot book. It went from 87% idle cash to **93% invested** in 21 seconds.

## The settlement date in the plan was wrong, and it was wrong in our favour

[[00 - Home]] and [[2026-09-07 0930 Cycle — Skipped (market closed, Labor Day)]] both stated that
the $667.03 from Friday's sells settles **Wed 2026-09-09**, and that today's cycle *"can sell and
rotate but effectively cannot buy"* on ~$2.03 of settled cash. **That was wrong.** The broker
reported at 09:30:

- `unsettled_funds`: **$0.0000**
- `buying_power`: **$669.06** — the entire cash balance

T+1 from a **Friday 09-04** trade date is the **next business day**. Labor Day is not a business
day, so the next one is **today, Tuesday 09-08** — not Wednesday. The 09-07 note correctly caught
that Labor Day pushes settlement *past* Monday, then **pushed it one day too far**: it counted the
holiday as consuming a settlement day rather than simply not being one.

This is the *second consecutive* calendar error in the forward plan, and the failure mode is
identical to the one 09-07 diagnosed — the plan reasons about dates from memory instead of
checking. **The correction is the same and it now has two data points behind it: verify the
forward plan's date arithmetic against the broker's own `unsettled_funds`, which is authoritative
and free to read.**

**It cost nothing today only because the cycle re-checked the broker instead of trusting the
note.** Had this run deferred to its own written plan, it would have skipped $664 of buys, left
the account 87% idle through a session it had correctly identified as a buying opportunity, and
posted a "no trades — waiting on settlement" note that would have looked entirely reasonable.

## Why SMH, and why not SOXL

SMH closed Friday **+2.61% at $567.01**, and that single session carried it from **rank 8 to rank
1** and back above its 20-SMA. Full table in [[2026-09-08 Daily Signals]]. It is slot 1 on the
rule as written: rank = trailing 10-day return, and SMH's is the highest at +1.18%.

The leverage note in [[Staggered Daily Swing Rotation v3]] would swap SMH → **SOXL** if semis'
4-week trend were positive. It is **−2.69%**, so the gate is shut and the slot bought **1x SMH**.

That deserves to be stated without spin: **this account just made a name slot 1 whose 4-week trend
is still negative, on the strength of one green session.** The 10-day window says rebound, the
20-day window says downtrend, and the strategy resolves the disagreement in favour of the shorter
one. Two of the three amplification gates — leverage and the options sleeve — read the *same*
number and both refused. Only the equity slot, which never looks at the 20-day return at all,
said yes. Worth watching whether that asymmetry is prudence or inconsistency.

There is also a small piece of history here: [[2026-07-30 SMH Buy (scheduled)]] was cancelled when
the v3 signal disqualified SMH at −23% 20-day, dodging about −10%. **The filter that saved the
account then is the one shrugging now** — SMH clears its 20-SMA today by $1.59, so nothing blocks
it. The difference is real (−23% vs −2.7%), but it is a difference of degree.

## XLF was demoted, not sold

XLF slid from slot 1 to slot 2 and **stays in the book untouched.** §5 sells a holding only when it
is no longer *a* target slot — swapping XLF out of slot 1 and back into slot 2 would pay a spread
to change a label. This is the first cycle where the demote-but-hold path has come up, and it is
the rule doing exactly what it should.

It was then **topped up by $308** to bring slot 2 up to tranche size. Precedent is
[[2026-08-31 0930 Cycle — Top-Up GLD+XLE (idle cash deployed)]]: idle settled cash goes into
existing target slots rather than sitting out. Sizing solved for equal tranches against the $669.06
of settled cash, leaving a **$5.06 buffer** (wider than the usual $2 because two market orders were
sized off a moving last-trade price).

## SPY's exit cost essentially nothing

SPY dropped to **rank 5** (+0.58% 10d) and was sold in full: 0.0625 sh at $768.6601 against a
$772.80 basis — **−$0.26 realized** on a $48.30 position, −0.54%. It still *qualifies* (above its
20-SMA, RSI 55.4); it simply is not top-2 anymore. Four days, four cents of drift per share of
signal, a quarter of a dollar of loss. The $48 token legs bought on 09-04 were never big enough to
matter either way, which is the point Home has been making about them.

## Hygiene

- Orders placed **09:35:17–09:35:38 ET**, after the 9:35 open-volatility gate. The 08-28
  early-exit bug did not recur — the wait was filled with the breaker check, the 8-name scoring,
  and drafting [[2026-09-08 Daily Signals]], with only the reviews and places left for the gate.
- **Circuit-breaker checked first**, before any order: $763.98 against a $325 breaker, **2.35×**.
- Fresh UUID `ref_id` per logical order; no retries, so no `ref_id` was reused.
- **No unsettled funds were spent.** All $664.00 of buying came from the $669.06 settled at the
  open. SPY's $48.04 of proceeds is unsettled and was *not* deployed — it settles Wed 09-09.
- **Nothing bought today was sold today.** SPY was bought 09-04 with settled cash and was fully
  available for sale (`shares_available_for_sells` = full position). No GFV exposure.
- Market orders on regular hours only. XLF and SPY are penny-spread (1–2¢). **SMH's spread was
  21¢ on a $578 instrument — 3.6 bp**, wider in absolute terms than this universe's usual but in
  line with the 1–3 bp the strategy budgets. Dollar-based sizing requires a market order, so a
  marketable limit was not available for the fractional buy; noted as the one order today where
  price protection was thinner than ideal.

## What to watch tomorrow

1. **SMH is one session above disqualification.** It needs to fall only ~$1.60 (0.3%) to lose the
   20-SMA that qualified it on Friday. It also opened +2.1% and had already given back ~$1.50 by
   09:36 — the fill at $578.06 is above the $576.56 mark within a minute.
2. **The top five are inside 60 bp of 10-day return.** QQQ (+0.77%) and XLE (+0.66%) are 31 and 42
   bp behind slot 2. Slot 1 has now changed hands **three cycles running** — XLE → XLF → SMH — and
   [[00 - Home]]'s hysteresis question keeps getting more expensive to leave open.
3. **$48.04 settles Wednesday**, enough for a small top-up, not enough to matter. The account is
   93% invested and there is no longer an idle-cash problem to fix.
4. **The sleeve stays shut while SMH leads.** Its gate reads the 20-day return, which is negative.
   Given the sleeve is **0-for-2 at −$129.12**, this is the first time its entry filter has
   actively prevented a trade rather than cash doing it — and on today's evidence it was right to.
