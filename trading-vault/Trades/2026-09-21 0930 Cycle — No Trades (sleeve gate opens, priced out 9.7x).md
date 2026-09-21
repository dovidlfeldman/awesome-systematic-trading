---
tags: [trade, run, no-trades]
date: 2026-09-21
slot: "0930"
kind: cycle
outcome: No Trades (sleeve gate opens, priced out 9.7x)
---

# 2026-09-21 0930 Cycle — No Trades (sleeve gate opens, priced out 9.7x)

| | |
|---|---|
| Ran | 09:30 ET (read-only work 9:30–9:35; no orders to place, so the open-volatility gate never bound) |
| Account | $691.84 (equity $689.83 + cash $2.01), **−23.9% vs $909.02 contributed** |
| Circuit-breaker | $454.51 — account at **1.52×** ($237.33 headroom) — clear |
| Signals | rank 1 **SMH** (+3.69% 10d, RSI 54.2), rank 2 **QQQ** (+0.53% 10d, RSI 55.7), rank 3 XLE (−0.48% 10d, RSI 55.6 — qualifies, buys nothing) |
| Target book | slot 1 **SMH**, slot 2 **QQQ** (held as **TQQQ**, the 3x wrapper) |
| Held | SMH 0.588900 sh, TQQQ 4.623601 sh — **unchanged, both still their slot's target** |
| **Traded** | **none — nothing sells (book *is* the top 2), nothing buys (settled cash is $2.01, the designed buffer), and the sleeve's gate opened but its only conforming contract costs 9.7× the §4 cap** |
| Options sleeve | **Empty — gate OPEN for the first time since [[Decisions]] #1, blocked purely on price.** SMH 20d **+1.84%** (positive, §9 satisfied). Nov 20 $585C: 0.532Δ, 60 DTE, mark **$3,342.50** vs a **$345.92** cap = **9.66×** |
| Realized / unrealized P&L | **−$242.52** (unchanged — nothing sold) / **+$25.35** |
| Blocked | Sleeve entry, on affordability (9.66× the premium cap). Git push permissions — see below |

## Why there was nothing to do

Three independent "no" answers, and each one is a different rule.

**Nothing sells.** The 09-18 close re-ranked the universe and the book came back as the top two
names in the same order: **SMH rank 1** (+3.69% 10-day, the universe's best by 3.16 points) and
**QQQ rank 2** (+0.53%). v3 §5 sells only when a holding is no longer its target slot; both
holdings *are* their target slots, so there is no churn and no settlement clock burned. Both legs
also passed §3 comfortably — SMH closed **+2.72%** over its 20-SMA, QQQ **+1.15%** — and neither
came near the RSI ≤ 75 ceiling (54.2 and 55.7). **That ceiling has now gone twenty-two cycles
without rejecting a single name.**

**Nothing buys.** Settled cash is **$2.01** and `unsettled_funds` is **$0.00** — broker-verified
rather than inferred, per the 09-07/09-08 calendar errors. Friday's two buys settled on schedule
this morning, which means the book is now fully sellable; it does not mean there is anything to
spend. $2.01 *is* the designed buffer, so the account is 99.7% deployed and there is no idle cash
for §6 to decline. This is the cleanest kind of no-buy day: not a rule refusing money, just no
money.

**The sleeve opened its gate and still could not trade — and this is the first time price was the
only thing in the way.** §9 (as rewritten by [[Decisions]] #1) opens the sleeve when it is empty
and the slot-1 underlying's 20-day return is positive. SMH's is **+1.84%**, from **−0.06%** at
Friday's open — the gate that was shut by 6 basis points on 09-18 is open by 184. So the entry was
actually owed, and it was priced live on this morning's chain rather than carried forward from any
earlier note (the 09-02 lesson: a contract that conforms today may not conform tomorrow).

| Expiry | Strike | DTE | Δ | Mark | vs $345.92 cap | Conforms? |
|---|---|---:|---:|---:|---:|---|
| 2026-11-20 | $585C | 60 | **0.532** | **$33.425** → **$3,342.50** | **9.66×** | greeks yes, **price no** |
| 2026-11-20 | $600C | 60 | 0.459 | $26.20 → $2,620.00 | 7.57× | **Δ below the 0.50 floor** — fails twice |
| 2026-10-30 | — | 39 | — | — | — | **below the 45-DTE floor** |

The arithmetic is not close and it is not fixable by strike selection: at a $582 underlying and 60
days, *any* contract inside the 0.50–0.65 delta band costs $2,600–4,000, while [[Risk Rules v2]] §4
caps premium at 50% of a $691.84 account. Going further out (Dec 18, 88 DTE) only costs more; going
higher in strike drops delta out of the band, as the $600C shows. **The sleeve on SMH is
arithmetically impossible at this account size and will stay so until either SMH is much cheaper or
the account is roughly 10× larger.** Cash would have blocked it anyway at $2.01 — but the binding
reason recorded here is the cap, because that is the one that would still bind on a fully funded
morning.

Worth stating plainly, since this is the failure mode [[Decisions]] #1 was written to prevent:
**no rank reasoning entered the sleeve decision.** The sleeve is empty, so there was nothing to
close and the two exit tests were not consulted; the entry was judged on the gate (open) and the
premium cap (fails). Second consecutive cycle in which the sleeve's rules were exercised cleanly.

## What came close to firing, and what would tip it

**SMH's leverage switch flipped open, and it is the largest live change on the board.** The v3
leverage note buys **SOXL** instead of SMH for a slot whose target is SMH when the 4-week semis
trend is positive. On Friday that trend was **−0.06%** and the switch stayed shut by 31 bp; today
it is **+1.84%** on the 20-trading-day measure and **+2.24%** on the 28-calendar-day measure —
positive on both, with no disagreement in sign. **It was not taken, because it is a buy-time rule
and no slot-1 buy is due** — the same reading applied on 09-09 when the same switch opened and no
buy was owed. Nothing in §5 converts an open leverage switch into a sell of a conforming 1x
holding.

What tips it: **any** slot-1 buy while that trend stays positive. The trigger is not a signal
change but a cash event — a rotation out of slot 2, or a deposit. **If that happens the account
holds SOXL *and* TQQQ, i.e. ~100% of the book in 3x wrappers**, against the ~50% it carries today.
That is a large step up in risk arriving through a rule that reads as a technicality, and it is
flagged here ex-ante rather than discovered on the fill.

**The §5/§3 conflict opened on 09-18 is still not live.** §5 says hold while the slot target is
unchanged; §3 says a 3x wrapper needs a positive underlying trend. They only disagree if QQQ's
4-week trend goes negative while QQQ still holds slot 2. It is positive on both measures —
**+1.48%** (20 trading days) and **+1.12%** (28 calendar days) — narrower than Friday's close
readings (+1.22%/+0.87% were measured intraday on live prices; on settled bars the comparison is
+1.48% today vs +0.12% at Friday's open). **The question remains open and unanswered, and nothing
in this run should be read as resolving it.** No owner decision exists on it.

**Breadth improved to 3 of 8** — SMH, QQQ and XLE all closed above their 20-SMAs, against 3 of 8 on
Friday and 0 of 8 on 09-17. **XLE qualifies for a fourth straight session and buys nothing**: its
10-day return is **−0.48%**, rank 3, and there are only two slots. The gap between rank 2 and rank
3 is **1.01 points** of 10-day return, which is wide enough that a single session is unlikely to
reorder it — QQQ would need to underperform XLE by a full point for slot 2 to change hands.

**The live tape is running hard the other way from the settled bars this note was scored on.** At
9:31 SMH is **$582.03, +1.58%** on the day, QQQ **+1.01%**, and TQQQ **$75.065, +3.34%** — a
**3.3× translation** of QQQ's move, the third live reading on the new leverage and consistent with
the 3.5× down / 2.85× up already recorded. Both legs are green on cost for the first time since
they were bought: SMH **+$10.52**, TQQQ **+$14.83**, **+$25.35** combined. None of that is acted
on — the cycle scores settled closes, and intraday strength is not a signal.

## Hygiene

No orders were placed, so no `ref_id` was consumed and no review was run. Broker state was verified
directly rather than inherited from Friday's note: `get_equity_orders` and `get_option_orders` for
2026-09-21 UTC both returned **empty**, confirming the cycle had not already run; `get_equity_positions`
returned exactly the two expected legs at their expected quantities; `get_option_positions` returned
**empty**, confirming the sleeve is genuinely flat and not merely assumed flat. `shares_available_for_sells`
equals `quantity` on both legs and `intraday_quantity` is zero on both, so Friday's purchases have
settled and §6's no-same-day-sale rule is not binding on anything.

**Still open (ops):** the git-permission defect first seen 2026-08-31 and recurrent 2026-09-16 —
non-interactive runs have had every git verb refused, leaving vault files on disk and the remote
stale until a later run picks them up. **Nineteen days open; the longest-standing unfixed ops
defect in this account.** No owner decision exists on it either.

## Next cycle (Tue 2026-09-22)

Expect the same book unless the tape reverses hard: SMH leads rank 2 by 3.16 points and QQQ leads
rank 3 by 1.01. **The live things to re-score are both leverage-related, not rotation-related** —
whether SMH's 4-week trend holds positive (it would send any slot-1 buy to SOXL) and whether QQQ's
does (a negative reading is what makes the §5/§3 conflict real for the first time). The sleeve will
re-test its gate and, on any SMH price near today's, will fail the premium cap again by roughly an
order of magnitude. Cash stays $2.01 absent a rotation or a deposit, so a quiet tape means a second
consecutive no-trade day.
