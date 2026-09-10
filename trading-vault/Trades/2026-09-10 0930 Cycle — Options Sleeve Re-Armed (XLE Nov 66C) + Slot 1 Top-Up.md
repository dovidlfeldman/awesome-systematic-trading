---
tags: [trade, run, traded]
date: 2026-09-10
slot: "0930"
kind: cycle
outcome: Options Sleeve Re-Armed (XLE Nov 66C) + Slot 1 Top-Up
---

# 2026-09-10 0930 Cycle — Options Sleeve Re-Armed (XLE Nov 66C) + Slot 1 Top-Up

| | |
|---|---|
| Ran | 9:30–9:36 ET (orders 9:35:37 / 9:36:01, after the 9:35 gate) |
| Account | **$750.92** (equity $452.31 + options $296.50 + cash $2.11), **+15.4%** vs $650.54 contributed — or **−17.4%** vs $909.02 if the disputed cash is a deposit |
| Circuit-breaker | $325 — account at **2.31×** ($425.92 headroom) — **clear**, checked before any order |
| Signals | rank 1 **XLE** (+5.24% 10d, RSI 68.4), rank 2 **SMH** (+3.32% 10d, RSI 53.2); **2 of 8 qualify** |
| Target book | slot 1 **XLE**, slot 2 **SMH** |
| Held | XLE, SMH — **both still targets, so no rotation** (they merely swapped ranks 1↔2) |
| **Traded** | **2 orders, 2 fills** — 1 XLE Nov 20 $66C @ $2.95 ($295.00); XLE equity +$56.00 @ $65.5299 |
| Options sleeve | **Re-armed** — gate open (XLE 20d **+7.19%**) *and* affordable for the first time since it went empty; $295 = **39.3%** of account vs a 50% cap |
| Realized / unrealized P&L | **−$148.91** (unchanged — nothing sold) / **−$9.19** |
| Blocked | none |

## Why this cycle traded

Two things lined up that have never lined up before.

**1. Slot 1 became a cheap name.** XLE and SMH swapped ranks — XLE 2 → 1 (+2.63% → +5.24% 10d),
SMH 1 → 2 (+4.93% → +3.32%). Under [[Staggered Daily Swing Rotation v3]] §5 that is a
*reordering*, not a rotation: a holding is sold only when it stops being *a* target slot, and
both names are still targets. **So the swap cost nothing** — no spread, no settlement clock. This
is the second consecutive cycle where the top two only reordered, and the third time the
"demote but hold" path has fired since 09-08.

But the swap moved **slot 1 from a $560 name to a $66 name**, and per the
[[2026-09-09 0930 Cycle — Rotation XLF out, XLE in|09-09 finding]] that is the *entire* question
for the options sleeve. A ~0.55Δ call at ~70 DTE costs roughly 7% of the underlying, so the
sleeve's real constraint is `underlying × 0.07 ≤ 50% of account value`. With slot 1 = SMH the
only conforming contract cost **$4,262.50 against a $379.06 cap (11.2× over)**. With slot 1 = XLE
the same arithmetic gives ~$300 against a $375.19 cap. **Nothing about the signal changed; the
ticket price did.**

**2. The gate is open by a wide margin, not by calendar noise.** XLE's 20-day return is
**+7.19%** — the strongest 4-week trend in the universe by ~10×, clearing the sleeve's
positive-trend gate by 719 bp. That matters because the last three cycles all recorded the same
warning: SMH's 20-day return round-tripped **+0.76% → ~0.00% → +0.09% → +0.24%** on a price that
barely moved, because the rolling window kept rolling off old bars. A 24–76 bp gate margin is a
calendar artifact. **719 bp is a signal.**

## Orders

| # | Leg | Order | ref_id | Result |
|---|---|---|---|---|
| 1 | **XLE Nov 20 2026 $66 Call** | buy to open 1, limit **$2.95** GFD, regular hours | `4c9150d3-5ee8-41fc-be41-5da7ca56bb1b` | **Filled 9:35:54 ET @ $2.95** — $295.00 premium + $0.04 fees. Order `6aa2b229`, settles 09-11 |
| 2 | **XLE** equity | buy **$56.00** market GFD, regular hours | `d31b71c5-482a-49c5-9f33-0eed07c17c1f` | **Filled 9:36:01 ET @ $65.5299** — 0.854571 sh. Order `6aa2b241`, $0 fees |

Both placed after the 9:35 open-volatility gate (verified against the clock, not assumed);
breaker, signals, and both reviews were done during the wait. **The 08-28 early-exit bug did not
recur** — this is the fourth consecutive cycle to clear the gate cleanly.

### Contract selection — and why the cheapest conforming expiry was the wrong one

The 45–90 DTE window (2026-10-25 → 2026-12-09) held **two** XLE expirations today: **Oct 30
(50 DTE)** and **Nov 20 (71 DTE)**. That alone is new — the 09-02 note found the window held
*exactly one* XLE expiration, and 09-09 confirmed the same one-expiration cliff on SMH. **The
cliff is not a permanent property of these chains; it depends on where the calendar sits.**

Oct 30 was the cheaper, shorter, better signal-matched expiry — and it was **rejected as
illiquid**:

> Every Oct 30 strike showed **open_interest 0, volume 0**, with a bid/ask of **$0.34 × $4.45**
> on the 0.50Δ strike. The "mark" of $2.40 was model-derived; there is no market at it.

[[Risk Rules v2]] §1 bans illiquid instruments and §4 requires liquid chains. Buying a
$4.11-wide book would have handed away more in spread on the round trip than the position could
plausibly make. **A conforming delta and DTE do not make a contract tradable** — this is a new
screen worth keeping: check OI/volume and spread width before pricing, because a fresh
end-of-month expiry can look perfect on the greeks and have never traded.

Nov 20 — the standard third-Friday monthly — was a real market (spreads $0.15–0.35, size in the
hundreds). Screening it against the **§4 cap of 50% × $750.38 = $375.19**:

| Nov 20 call | Delta | Mark | Premium | Verdict |
|---|---:|---:|---:|---|
| $64C | 0.642 | $4.225 | $422.50 | ✗ **over the §4 cap** |
| $65C | 0.591 | $3.600 | $360.00 | ✗ exceeded settled cash at screening time ($353.15) |
| **$66C** | **0.529** | **$2.950** | **$295.00** | ✓ **conforming and affordable** |
| $67C | 0.485 | $2.645 | — | ✗ **delta below the 0.50 floor** |

By the 9:35 re-price the $65C had eased to $347.50 and become technically affordable, so the
choice was live rather than forced. **The $66C was still the right pick**: it leaves $58 of cash
to fund the underfunded slot-1 equity leg instead of $5, and it puts less premium at risk on a
sleeve with a 0-for-2 record. Conformance was re-verified at the moment of purchase, per the
09-02 rule that *a contract that conforms today may not conform tomorrow* — final delta **0.529**,
**71 DTE**, premium **39.3%** of account.

**Priced exactly at mid with zero slippage.** At 9:35 the book was $2.86 × $3.05, mid $2.955.
The chain's tick grid is $0.01 below a $3.00 cutoff and $0.05 above it — so $2.95 was both a
valid tick *and* effectively the mid, and it filled there in 17 seconds. Had the mark stayed at
the 9:32 level of $3.06 the grid would have forced a choice between $3.05 and $3.10; the dip
below $3.00 removed the rounding problem entirely. Worth noting for next time: **whether "limit
at mid" is exactly expressible depends on which side of $3.00 the premium sits.**

### Sizing the equity leg

After the fill the broker reported buying power of exactly **$58.11** (= $353.15 − $295.00 −
$0.04). Deployed **$56.00** into XLE, keeping a **$2.11** buffer. XLE — not SMH — got the money
because slot 1 was the starved leg: it carried a **$51.00** basis against slot 2's **$356.00**,
a lopsidedness the 09-09 note attributed to settlement and expected to fix today.

It is only partly fixed. Slot 1's *equity* leg is now **$107.00** against slot 2's $356.00,
because the sleeve absorbed $295 of the $353 available. Counting the option, **total XLE exposure
is $403.44 (53.7% of the account)** versus SMH's $345.37 — so on an exposure basis slot 1 is now
the *larger* leg, just held in a different instrument.

## Hygiene

- **Breaker checked first**, before any order — $750.38 vs $325 = 2.31×.
- **`unsettled_funds` read from `get_accounts` before *and* after trading: $0.0000 both times.**
  All $353.15 was genuinely settled. This is the third consecutive cycle to verify settlement
  against the broker rather than trusting the forward plan's date arithmetic — the check that
  caught the 09-08 error. Today it agreed with the plan, which is the point: it is cheap and it
  is the only authoritative source.
- Nothing sold, so **no GFV exposure**: no position bought with unsettled funds was sold, and no
  purchase used unsettled proceeds.
- Fresh UUID `ref_id` per logical order; both reviewed before placing (`order_checks` empty on
  both — no broker alerts). Market order used only on XLE, a **1-cent-spread** ETF
  (Bid $65.54 × 600 · Ask $65.55 × 2900), in regular hours. The option went as a **limit**, per
  §4 ("limit orders only").
- Options sleeve at **39.3%** of account value against the §4 50% ceiling; long-only, so max loss
  is the $295 premium.
- **Concentration is systemic, not discretionary.** §2 permits up to 100% in one position *only
  when it is the top-ranked asset*. XLE is rank 1, so the 53.7% XLE exposure is compliant — it
  came from the ranking, not from conviction.

## The risk this cycle deliberately took on — flagged for the owner

**The sleeve is 0-for-2 and −$129.12, and it is the account's entire loss story** (every equity
rotation combined is −$14.26). The [[2026-09-04 0930 Cycle — Rotation XLE out, XLF+SPY in (sleeve closed)|09-04 note]]
diagnosed the mechanism and it has not been fixed:

> a 45–90 DTE call is bought on the slot-1 name, then slot 1 changes hands within days and the
> close condition fires long before the thesis can work.

**That risk is live right now.** XLE has held slot 1 for exactly **one session**. Slot 1 has
changed hands on 09-04, 09-08 and 09-10 — **three times in five sessions.** If it changes again
this week, a 71-day contract gets closed after a few days for the third time, for reasons that
have nothing to do with XLE.

This trade was still placed, and the reasoning should be on the record: **the rule is written,
the mandate is explicitly aggressive, and no owner decision has changed it.** v3 §9 and
[[Risk Rules v2]] §4 authorize exactly this trade, and the 09-04 request for a decision — *lengthen
what holds the sleeve open, shorten the contract, or retire the sleeve* — has gone unanswered
across four cycles. Declining to trade would have substituted this run's judgment for the
owner's on a live strategy question; the sleeve was blocked on **affordability** every day since,
so the question was never forced. Today it was. What this cycle *could* control it did: it took
the lower-delta, lower-premium contract of the two available, and it refused the illiquid expiry.

**Owner decision still wanted, now more urgently than on 09-04** — the position is real this
time, not hypothetical. The concrete options remain:

1. **Close the sleeve on XLE's own trend/DTE, not on losing a relative rank.** Both prior losses
   were caused by the slot-1 test, not by either risk test — on 09-04 XLE's 20d was +11.11% with
   77 DTE when the call was closed. This is the single highest-value change.
2. **Add rank hysteresis** (an incumbent holds slot 1 unless beaten by ≥25 bp of 10-day return),
   which would damp the 3-changes-in-5-sessions churn driving the problem. Still unimplemented
   since 09-04, when a **1.4-cent** close decided a full liquidation.
3. **Retire the sleeve.**

## What nearly happened but did not

- **The leverage switch was armed and not taken — and that was worth real money today.** SMH's
  20-day return is **+0.24%**, which technically arms *"if a slot's target is SMH and semis'
  4-week trend is positive, the slot buys SOXL instead."* It did not apply: SMH is slot 2 and
  already held, so no slot-2 buy was due, and the switch is a **buy-time** rule. **SOXL opened
  −6.50%** ($125.87 → $117.695). Third consecutive cycle recommending this be *codified* as
  buy-time rather than left to inference.
- **QQQ failed exactly as predicted, and the check/cycle division of labour worked again.** The
  09-09 12:30 check called QQQ *"on track to fail"*; the 15:45 check measured it $1.22 below its
  20-SMA; it closed **$0.968 below** and is out. Both checks declined to act and deferred to this
  cycle. **Qualifiers 3 → 2** — and there is now no third name, so if either leg fails, a slot
  goes to cash.

## Position after this cycle

| Slot | Position | Qty | Avg cost | Basis | Mark | Value | Unrealized |
|---|---|---:|---:|---:|---:|---:|---:|
| 1 | **XLE** equity | 1.632641 sh | $65.5380 | $107.00 | $65.50 | $106.94 | **−$0.06** |
| 1 | **XLE Nov 20 $66C** | 1 ct | $2.95 | $295.00 | $2.965 | $296.50 | **+$1.50** |
| 2 | **SMH** equity | 0.615853 sh | $578.0600 | $356.00 | $560.80 | $345.37 | **−$10.63** |
| | Cash | | | | | $2.11 | |
| | **Total** | | | **$758.00** | | **$750.92** | **−$9.19** |

Account is **99.7% deployed** — the most fully invested it has been under v3. SMH carries the
whole unrealized loss: it is **−2.35%** on the session and the reason the account is down $9.19.

## Next cycle (Fri 2026-09-11, 9:30 ET)

1. **SMH is the name at risk, and its failure would be expensive in two ways.** It qualified on
   the 09-09 close with $8.59 (1.52%) over its 20-SMA but is trading **−2.35%** at $560.80. A
   close near here puts it roughly **$2–5 below** its 20-SMA → fails the §3 trend filter → slot 2
   sells. **With QQQ also failing there is no third qualifier, so slot 2 goes to cash** and the
   proceeds are unspendable for a day.
2. **Re-read all three sleeve close conditions on fresh bars.** Today they are wide — XLE 20d
   **+7.19%**, **70 DTE** at tomorrow's open — but the binding one is the **slot-1 test**, and
   XLE has held slot 1 for one session. Note the asymmetry: if SMH fails and XLE holds rank 1,
   the sleeve is *safe*; the sleeve dies only if something **outranks XLE**, and on the current
   board nothing is close (rank 3 QQQ is below its own trend filter).
3. **Cash is $2.11 — there is nothing to deploy.** Barring a sale, tomorrow is a hold-or-sell
   cycle only. Do not plan a buy.
4. **Check the market calendar when writing this plan, not only in the skip guard.** Fri
   2026-09-11 is a normal session; the next US market holiday is Thanksgiving, 2026-11-26. Two
   cycles (09-07, 09-08) mis-stated a date from memory, in opposite directions.
5. **Contributed capital and the breaker remain unchanged pending owner confirmation** of the
   +$258.48. Still unresolved after 13 days. Until answered, the honest reading is
   **−17.4% vs $909.02**, not +15.4%.
