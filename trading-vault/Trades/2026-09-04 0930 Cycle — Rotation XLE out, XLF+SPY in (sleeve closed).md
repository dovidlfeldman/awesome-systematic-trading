---
tags: [trade, run, traded]
date: 2026-09-04
slot: "0930"
kind: cycle
outcome: Rotation XLE out, XLF+SPY in (sleeve closed)
---

# 2026-09-04 0930 Cycle — Rotation XLE out, XLF+SPY in (sleeve closed)

| | |
|---|---|
| Ran | 9:30 ET (read-only) → orders 9:35 ET |
| Account | **$765.65** (equity $96.59 + cash $669.06), **+17.7%** vs $650.54 contributed — or **−15.8%** vs $909.02 if the disputed deposit counts |
| Circuit-breaker | $325 — account at **2.36×** ($440.65 headroom) — clear |
| Signals | rank 1 **XLF** (+2.83% 10d, RSI 60.5), rank 2 **SPY** (+1.39% 10d, RSI 58.6); XLE 3rd (+1.36%) |
| Target book | slot 1 **XLF**, slot 2 **SPY** |
| Held | nothing — the entire prior book was rotated out |
| **Traded** | **4 orders, all filled — full two-slot rotation plus the sleeve close** (table below) |
| Options sleeve | **CLOSED** — XLE lost slot 1, the first close condition to fire; sold at $2.49 for **−$66.04** |
| Realized / unrealized P&L | **−$58.42 today** (cumulative **−$143.38**) / **−$0.01** on the new legs |
| Blocked | none — but $667.05 of proceeds is unsettled and idle until Tuesday (see below) |

## Orders

| # | Leg | Side | Type | Qty | Fill | Value | `ref_id` | Order id |
|---|---|---|---|---|---|---|---|---|
| 1 | XLE | sell | market, GFD | 6.564494 sh | **$63.6901** | $418.09 | `c3d79cb2-59bf-47c2-a14c-0767480029e5` | `6a9ac914-7c03-466a-8e1f-837455b7974f` |
| 2 | XLE Nov 20 $65C | sell to close | limit $2.49, GFD | 1 | **$2.49** | $249.00 gross, $248.96 net | `4230d778-b534-4c2b-80ae-c9beeb9587be` | `6a9ac915-dcfb-4b89-95eb-d7708acba676` |
| 3 | XLF | buy | market, GFD | 0.829919 sh | **$58.1984** | $48.30 | `be806ae8-4bdd-4458-b556-794ecd481b1e` | `6a9ac91d-9d31-4b8a-aab9-3a3695ce569b` |
| 4 | SPY | buy | market, GFD | 0.0625 sh | **$772.80** | $48.30 | `bb684daa-6587-49e5-a699-abd2d82ff385` | `6a9ac921-f5d3-4cc8-ba99-fdafc40a93d6` |

All four reviewed before placing; **every review returned `order_checks: {}`** — no broker alerts on
any leg. Fresh UUID `ref_id` per logical order. Option fees $0.04 total (OCC $0.02 + OR $0.02);
equity fees $0.00.

Required quote disclosures, verbatim from each review:

> Bid $64.09 × 1700 V · Ask $64.14 × 2000 V · Last $64.115 × 200 D. Updated 9:31 AM ET.

> Bid $58.27 × 4200 Q · Ask $58.28 × 2800 Q · Last $58.27 × 3082 D. Updated 9:31 AM ET.

> Bid $772.46 × 80 V · Ask $772.48 × 120 Z · Last $772.465 × 80 D. Updated 9:31 AM ET.

## Why this fired

See [[2026-09-04 Daily Signals]] for the full table. Scored on bars through the 09-03 close:

- **XLF took slot 1** at +2.83% 10-day, beating XLE by **1.44 percentage points**. Not close.
- **SPY took slot 2** at +1.39%, beating XLE by **0.021 pp — $0.0136 of closing price.**
- **Qualifiers went 1 → 4 of 8.** The breadth collapse that put slot 2 in cash on 09-02 partly
  reversed; SPY and XLF climbed back through their 20-SMAs.

XLE did not break down — its 20-day return is still **+11.11%**, the best in the universe. It got
passed. The 10-day base date rolled to 08-20, and since then XLE has gone sideways ($63.75 →
$64.62) while XLF ran +2.83%.

### The coupled unwind, now tested

[[00 - Home]] flagged this as the untested collision: slot 1 changing hands takes out the equity
leg **and** the call in the same session, on a name that was 88% of the account. It happened today
and it executed cleanly — sell, close, two buys, four fills inside 14 seconds, no alerts, no
partial fills, no rejected legs. **The mechanism works.** What it cost is a separate question.

The sleeve closed on the **slot-1 test only**. The other two conditions were nowhere near: 20-day
return **+11.11%** (needs negative) and **77 DTE** (floor 21). That is worth noting because it means
the sleeve was closed by a *relative* signal, not a risk signal — the call was killed by XLF
outperforming, not by XLE falling.

### The 1.4-cent decision

The **equity** rotation out of XLE turned on $0.0136 of closing price. For XLE to have held slot 2
it needed to close at $64.6336 instead of $64.620. §4 ranks on 10-day return with no tie band and
no hysteresis, so the rule is unambiguous — and adding a band *after seeing which side of the line
the position landed on* is exactly the discretion the system exists to remove. It was executed as
written.

Two things make it less alarming than it sounds. First, the **sleeve close did not depend on it**
— XLF won slot 1 by 1.44 pp, so the call closes on any reading. Second, XLE fell another **−1.44%**
in the first five minutes of trading (64.62 → 63.69 fill), so the rotation was directionally right
within minutes of firing, whatever the margin that triggered it.

**A rank-boundary hysteresis band is worth the owner's consideration** — e.g. an incumbent holds
its slot unless beaten by ≥25 bp of 10-day return. Today that band would have kept XLE in slot 2
and saved a spread plus a settlement cycle. It is a strategy change, not a mid-cycle judgment call.

## P&L

| Leg | Basis | Proceeds | Realized |
|---|---|---|---|
| XLE shares | $410.48 (6.564494 @ $62.53) | $418.09 | **+$7.62** |
| XLE Nov 20 $65C | $315.00 | $248.96 net | **−$66.04** |
| | | **Today** | **−$58.42** |

Cumulative realized: **−$143.38** (equity legs **−$14.26**, options sleeve **−$129.12**).

**The equity leg made money and the sleeve lost four times as much.** The sleeve is now 2-for-2 on
losses (−$63.08 on the Oct $59C in August, −$66.04 today) for **−$129.12 total** — against
**−$14.26** from every equity rotation combined. Both sleeve trades died the same way: bought a
45–90 DTE call on the slot-1 name, then slot 1 changed hands within days and the close condition
fired long before the thesis had time to work. **A 79-day contract held for 2 days is a structural
mismatch**, and it has now happened twice. The sleeve's entry gate (slot 1 + positive 20d) is
faster-moving than the instrument it buys.

Today's specific cost: the call was marked **$3.35 at the 09-02 close** and sold at **$2.49** — a
$0.86 slide in two sessions, of which about $0.33 came in the first five minutes of today's session
alone. Selling at the mid of a $0.22-wide spread (2.38/2.60) was the right mechanic; the timing was
forced by the rule.

## Hygiene

- **Settled funds only ([[Risk Rules v2]] §6).** Buys used **$96.60 of the $98.63 settled cash**,
  leaving a **$2.03 buffer**. Today's **$667.05** of proceeds ($418.09 equity + $248.96 option) is
  unsettled and was not spent.
- Nothing sold today was bought with unsettled funds — XLE was bought 08-26/08-31 and long settled;
  `shares_available_for_sells` was the full 6.564494.
- Market orders only on penny-spread ETFs in regular hours; the option went limit-at-mid, as
  required.
- Orders were held to the **9:35 open-volatility gate** (placed 9:35:16–9:35:29) with the read-only
  work — breaker, signals, reviews, signals note — done during the wait. **The 08-28 early-exit bug
  did not recur.**

## What this leaves

**The account is 87% cash and it will stay that way until Tuesday.** $669.06 of $765.65 sits in
cash, of which only ~$2 is deployable, because $667.05 settles T+1 into a Monday holiday-free
week — proceeds from a Friday trade settle **Tuesday 2026-09-08** (the option execution reports
`settlement_date: 2026-09-08`). Slots 1 and 2 are each holding a **$48.30 token position** rather
than a real tranche.

This is the [[Risk Rules v2]] §6 cost that [[00 - Home]] has been flagging since 09-01, and today is
the most expensive instance of it yet: **the account is right about the signal and can't act on it.**
The broker would allow the trade — this account is `limited_margin` and reported the full $669.06 as
buying power, not $2.03. §6 is a conservatism the owner adopted, not a wall the broker imposes.
**Owner decision still wanted.** It was followed today, as written.

**Sleeve: not re-armed.** XLF is slot 1 and its 20-day return is positive (+1.30%), so the gate is
open — but settled cash after the buys is **$2.03** against a premium cap of ~$383 (50% of account).
There was nothing to buy it with. Per the 09-02 lesson, tomorrow's contract gets priced tomorrow;
today's chain is not carried forward as valid.

**Next cycle (Mon 2026-09-08, 9:30 ET):**
1. **Re-rank first.** XLE at rank 3 is 2 bp behind SPY — it can retake a slot on a single session,
   and XLF/SPY clear their SMAs by only 1.2% and 0.5%.
2. **Still no dry powder.** Settled cash Monday is ~$2.03; the $667.05 settles **Tuesday**. Monday's
   cycle can sell and re-rank but can effectively not buy. Tuesday is the first day the account can
   be put back to work at size.
3. **Sleeve re-arm is a Tuesday question**, and worth asking whether it should be re-armed at all
   given 2-for-2 losses and the structural DTE-vs-signal-speed mismatch above.
4. **Concentration risk is gone** — for the wrong reason. The 88%-XLE problem resolved into an 87%
   cash position.
