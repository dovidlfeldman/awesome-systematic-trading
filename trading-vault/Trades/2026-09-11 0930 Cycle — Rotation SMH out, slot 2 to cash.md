---
tags: [trade, run, traded]
date: 2026-09-11
slot: "0930"
kind: cycle
outcome: Rotation SMH out, slot 2 to cash
---

# 2026-09-11 0930 Cycle — Rotation SMH out, slot 2 to cash

| | |
|---|---|
| Ran | 09:30–09:36 ET (order placed 09:35:13, filled 09:35:13) |
| Account | **$727.45** (equity $106.27 + options $270.00 + cash $351.18), **+11.8%** vs $650.54 contributed — or **−20.0%** vs $909.02 if the disputed deposit is real |
| Circuit-breaker | $325 — account at **2.24×** ($402.45 headroom) — **clear** *(also clear at 1.60× against the $454.51 the deposit reading would imply)* |
| Signals | rank 1 **XLE** (+4.00% 10d, RSI 65.2, **the only qualifier**), rank 2 SMH (+0.81% 10d, RSI 48.0 — **fails trend, $4.20 below its 20-SMA**) |
| Target book | slot 1 **XLE**, slot 2 **cash** (no second qualifier) |
| Held | XLE 1.632641 sh + 1 XLE Nov 20 $66C — unchanged |
| **Traded** | **1 fill — SMH 0.615853 sh sold at $566.80 (−$6.93 realized)** |
| Options sleeve | **held** — all three close conditions wide: XLE still rank 1, 20d **+6.39%**, **70 DTE** |
| Realized / unrealized P&L | **−$6.93 today / −$155.84 to date** · unrealized **−$25.73** |
| Blocked | none — but ~$349 of proceeds is unsettled until Mon 09-14, and there was no qualifier to buy anyway |

## Orders

| # | Leg | Side | Type | Qty | Fill | State | `ref_id` | Order id |
|---|---|---|---|---:|---:|---|---|---|
| 1 | SMH | sell | market, GFD, regular hours | 0.615853 | **$566.80** | **filled** | `f950138d-b57f-4aa5-add2-3dc2a4e3fd2c` | `6aa40391-fd11-4132-b624-7c17d73e8940` |

Placed 09:35:13.232Z, filled 09:35:13.380Z — **148 milliseconds**, single execution, no partial,
**$0.000 in fees**. Proceeds **$349.07**.

**Review before place ([[Risk Rules v2]] §5).** `review_equity_order` returned `order_checks: {}`
— no broker alerts of any kind. The compliance disclosure, verbatim:

> Bid $566.91 × 40 Q · Ask $567.07 × 40 K · Last $567.00 × 50 P. Updated 9:35 AM ET.

A 16-cent book on a $567 instrument is **2.8 bp**, which keeps a market order inside the §5
"penny-spread instruments in regular hours" allowance. The fill at $566.80 came in $0.11 below the
quoted bid — ordinary fractional-share execution noise on a fast tape, not slippage worth flagging.

**Realized:** 0.615853 sh × ($566.80 − $578.06) = **−$6.93**. The position was opened 09-08 and
topped up the same day; it lived three sessions.

## Why SMH sold

[[Staggered Daily Swing Rotation v3]] §3 requires **close > 20-day SMA**. On the 2026-09-10 close
SMH printed **$560.28 against a 20-SMA of $564.4755 — $4.20 (0.74%) below it.** That is a trend
failure, so SMH is not a qualifier; §4 then defines slot 2 as *"the second **qualifier**,"* not the
second-ranked name. SMH is still **rank 2** on 10-day return (+0.81%) and it sold anyway, because
rank without qualification buys nothing.

**With XLE the only qualifier in the universe, there is no third name to take the slot, so slot 2
goes to cash** — exactly the state the book was in on 09-02, the only other single-qualifier day of
the v3 era.

**Both of yesterday's checks called this a day early and both correctly refused to act.** The 12:30
check measured SMH $3.44 under its 20-SMA; the 15:45 check measured $2.63 under and wrote *"it
fails §3 on current prices and slot 2 likely sells tomorrow, logged not acted on."* That is now
**two consecutive rotations** — XLF on 09-09, SMH today — that the intraday checks predicted and
deferred to the cycle. **The no-intraday-rotation rule has now cost nothing twice.**

## The uncomfortable part: SMH was sold while passing the filter that condemned it

This needs to be on the record plainly rather than buried in the signals note.

At the moment of the sale SMH was trading **$566.80–$567.00, up +1.04%** on a broad market gap.
Rolled forward to include that print, its 20-SMA would be **$563.32** — putting SMH **$2.77 above**
it. **On live prices SMH qualifies.** It was sold on a stale close, into strength, and the whole
universe gapped with it:

| Sym | 09-10 close | ~9:31 ET | Move |
|---|---:|---:|---:|
| GLD | 396.36 | 402.23 | +1.48% |
| IWM | 287.70 | 291.11 | +1.19% |
| **SMH** | **560.28** | **566.09** | **+1.04%** |
| XLF | 56.87 | 57.39 | +0.91% |
| SPY | 757.83 | 764.60 | +0.89% |
| QQQ | 708.69 | 714.545 | +0.83% |
| TLT | 80.78 | 81.315 | +0.66% |
| XLE | 64.93 | 65.16 | +0.35% |

**It was executed as written, deliberately.** The signal is defined on completed daily bars;
re-scoring on a 90-second-old opening print is not this strategy, it is a different strategy
invented mid-run to avoid a trade the rules required. The direct precedent is **09-09**, when XLF
was sold on a stale close while trading +0.43% intraday, and that sale was right. Inventing a
discretionary override at the moment it would reverse a loss is precisely the failure mode the
written rules exist to prevent.

**But this is the sharpest version of that tension the book has produced,** because the intraday
gap sits on the *pass/fail side of the line* rather than merely moving the price, and because there
is no third qualifier — so the alternative to holding SMH is not a better name, it is **cash**.
This belongs to the same family as the 09-04 1.4-cent slot decision: a boundary the rules resolve
cleanly and a human might resolve differently. **Owner decision wanted, and it is the same one
already open from 09-04** — see the forward plan.

## Why nothing was bought

Three independent reasons, any one of which alone would have been sufficient:

1. **No qualifier to buy.** Slot 1 is XLE and it is already held (both legs). Slot 2 has no
   qualifying candidate at all, and §4 sends an unfilled slot to cash. **Cash is a position.**
2. **No settled cash.** Cash reads **$351.18**, but `get_accounts` reports `unsettled_funds`
   **$349.07** — the SMH proceeds, to the cent. Genuinely settled cash is **$2.11**, the buffer.
   [[Risk Rules v2]] §6 sizes on settled funds only.
3. **The sleeve is already filled.** The §9 entry gate is open (XLE is slot 1 with a +6.39% 20-day
   trend) but the sleeve holds one conforming call already, and the cap is a premium ceiling, not a
   contract count — a second call would take premium at risk to $565 against a **$363.72** cap.

**`unsettled_funds` was read from the broker rather than inferred from a date** — the concrete fix
adopted after 09-08, when two consecutive cycles mis-stated settlement from memory in opposite
directions. Today the broker's figure and the arithmetic agreed exactly, but the arithmetic was
checked *against* the broker, not trusted instead of it.

Also worth restating: `buying_power` reported the full **$351.18**, unsettled proceeds included,
because this account is `limited_margin`. **The broker would have let the money trade today.** The
T+1 wall here is [[Risk Rules v2]] §6 — an owner conservatism — not a broker mechanic. It cost
nothing today, since there was nothing to buy.

## Options sleeve — held, and it survived the rotation exactly as predicted

1 **XLE Nov 20 2026 $66 call**, opened 09-10 at $295.00. All three §3 close conditions re-read this
morning and all three pass wide:

| Condition | Threshold | Today | Margin |
|---|---|---|---|
| Underlying lost slot 1 | any name outranks XLE | **XLE is rank 1** — and the only qualifier | no challenger |
| Underlying 20-day return | must turn negative | **+6.39%** | 639 bp |
| Days to expiry | floor 21 | **70 DTE** | 49 days |

Marked **$2.70** (bid $2.56 × ask $2.77) against the $2.95 fill — **−$25.00 unrealized**, delta
decayed 0.529 → 0.499. **A mark-to-market loss is not a close condition and no stop was invented
mid-run**, the same call the 09-10 close check made.

**The asymmetry flagged in yesterday's forward plan is now confirmed in live conditions:** slot 2
failing does not touch the sleeve. The sleeve is killed only by something *outranking* XLE, and
after today there is no second qualifier left to do it. The sleeve is, paradoxically, **safer in a
one-qualifier market than in a healthy one.**

Sleeve scorecard: **0-for-2 closed, −$129.12**, with trade #3 open at **−$25.00**. Against
**−$26.72** from every equity rotation combined — a gap that narrowed today for the first time in a
while, because the equity side took a loss.

## Hygiene

- Breaker checked **first**, before the signal fetch and before any order. 2.24×, clear.
- Fresh UUID `ref_id` on the single logical order; nothing retried, nothing duplicated.
- `get_equity_orders` and `get_option_orders` both returned **empty** for 2026-09-11 UTC before
  acting — the cycle had not already run.
- SMH was **settled and not bought today**: `intraday_quantity` 0.000000,
  `shares_available_for_sells` 0.615853 (full position), `shares_held_for_*` all zero. No GFV risk.
- Orders held to the **9:35 open-volatility gate** — breaker, signals, quotes, the signals note and
  both reviews were all done during the 9:30–9:35 wait, and the order went in at 09:35:13. **The
  08-28 early-exit bug did not recur** (7th consecutive clean cycle on this path).
- Post-trade state re-verified against the broker: SMH gone from `get_equity_positions`, XLE
  unchanged at 1.632641 sh, cash $351.18 / unsettled $349.07, option position intact.

## Book after this cycle

| Leg | Position | Cost | Value | Unrealized |
|---|---|---:|---:|---:|
| Slot 1 equity | XLE 1.632641 sh @ $65.54 | $107.00 | $106.27 | **−$0.73** |
| Slot 1 sleeve | 1 XLE Nov 20 $66C @ $2.95 | $295.00 | $270.00 | **−$25.00** |
| Slot 2 | **cash** | — | $351.18 | — |
| | | | **$727.45** | **−$25.73** |

**XLE is now 51.7% of the account** ($106.27 equity + $270.00 premium) and is the *only* security
the book owns. [[Risk Rules v2]] §2 permits up to 100% in a single position **when it is the
top-ranked asset** — XLE is not merely top-ranked, it is the sole qualifier — so this is compliant,
and the concentration arrived from the system rather than from conviction, which is the test §2
actually applies. The remaining 48.3% is cash.

## Forward plan (Mon 2026-09-14, 9:30 ET)

1. **~$349 settles Monday and there will probably be somewhere to put it.** T+1 from Fri 09-11 is
   Mon 09-14; **the next US market holiday is Thanksgiving, 2026-11-26**, checked against the
   calendar rather than recalled. **Read `unsettled_funds` before believing that** — it is free and
   it has been wrong from memory twice.
2. **The live question is whether SMH comes straight back, and it should be decided before Monday
   rather than during it.** If today's +1.04% gap holds into the close, SMH re-qualifies on
   Monday's scoring and is the obvious slot-2 buy — with settled cash available to fund it.
   **That is a two-day round trip on the same name: a spread, a settlement cycle, and a realized
   −$6.93, to end exactly where the book started.** It is the cleanest case yet for the
   **rank-boundary hysteresis band** proposed on 09-04 (an incumbent holds its slot unless beaten
   by ≥25 bp — or here, unless it fails the trend filter by more than a small band). **Owner
   decision wanted before Monday's open, because Monday is when it costs money.** It is a strategy
   change and was deliberately not applied on the fly today.
3. **Breadth is the binding constraint and it can reverse fast.** Seven of eight names fail on
   trend alone, five of them within 2% of their 20-SMA, and none is disqualified for being
   overbought (top RSI is XLE's 65.2). If today's broad gap sticks, **SMH, XLF, QQQ, SPY and TLT
   could all re-qualify at once** and the book could go from one qualifier to five in one session.
4. **The sleeve needs nothing unless a new name takes rank 1.** 20d +6.39% and 69 DTE at Monday's
   open; both risk tests pass by wide margins. The only live threat is the slot-1 test, and there
   is currently no qualifying challenger. **Re-read all three anyway** — the 09-02 lesson is that a
   contract's conformance is a property of the morning you check it, not of the position.
5. **The 09-04 sleeve-design question remains open and is still the highest-value fix.** Close the
   sleeve on XLE's *own* trend and DTE rather than on losing a relative rank. Today is weak
   evidence *for* the current design (the sleeve correctly survived a slot-2 failure), but the two
   closed losses both came from the slot-1 test firing on a fast-moving signal pointed at a
   slow-moving instrument. Nothing about that has changed.
