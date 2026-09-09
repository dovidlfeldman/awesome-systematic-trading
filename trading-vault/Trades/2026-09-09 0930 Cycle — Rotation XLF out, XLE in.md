---
tags: [trade, run, traded]
date: 2026-09-09
slot: "0930"
kind: cycle
outcome: Rotation XLF out, XLE in
---

# 2026-09-09 0930 Cycle — Rotation XLF out, XLE in

| | |
|---|---|
| Ran | 09:30 ET (read-only), orders 09:35:06–09:35:11 ET |
| Account | $758.13 (equity $404.98 + cash $353.15), **+16.5%** vs $650.54 contributed — or **−16.6%** vs $909.02 if the disputed cash is a deposit |
| Circuit-breaker | $325 — account at **2.33×** ($433.13 headroom) — clear *(also clear at 1.67× against the $454.51 the deposit reading would imply)* |
| Signals | rank 1 **SMH** (+4.93% 10d, RSI 53.4, +1.43% over 20-SMA), rank 2 **XLE** (+2.63% 10d, RSI 66.2, +2.65% over 20-SMA); qualifiers **3 of 8** |
| Target book | slot 1 **SMH**, slot 2 **XLE** |
| Held | SMH 0.615853 sh — unchanged, still slot 1 |
| **Traded** | **2 orders, 2 fills — XLF sold in full (−$5.27), XLE opened at $51.00** *(table below)* |
| Options sleeve | **Empty — gate open for the first time, contract 11.2× the cap.** SMH 20d turned +0.76% so the trend filter passed; the only conforming contract costs $4,262.50 against a $379.06 premium cap |
| Realized / unrealized P&L | **−$148.91** / **−$2.01** |
| Blocked | Slot 2 is funded at $51 of a ~$203 fair share — $351.02 of XLF proceeds are unsettled until 09-10 under [[Risk Rules v2]] §6 |

## Orders

| # | Symbol | Side | Type | Qty | Fill | Proceeds / cost | `ref_id` | Order id | State |
|---|---|---|---|---|---|---|---|---|---|
| 1 | **XLF** | sell | market, GFD, regular hours | 6.168808 sh | **$56.9015** | +$351.01 | `544baef7-e09d-41df-9abf-b886a7b84c26` | `6aa1608a-0ef4-420e-89a8-79b04e619c54` | filled 09:35:06.713 |
| 2 | **XLE** | buy | market (dollar-based), GFD, regular hours | 0.778070 sh | **$65.5468** | −$51.00 | `3ef919bb-9f17-4d14-a0e3-c5e32d5a3f6b` | `6aa1608f-de99-4251-a65d-c72044dd6b63` | filled 09:35:11.229 |

Both orders reviewed before placement; **`order_checks` came back empty (`{}`) on both** — no broker
alerts, no buying-power warnings, no halts. Verbatim compliance disclosures from the reviews:

> **XLF** — "Bid $56.87 × 4500 Q · Ask $56.88 × 700 P · Last $56.87 × 100 Q. Updated 9:31 AM ET."

> **XLE** — "Bid $65.54 × 500 V · Ask $65.55 × 900 V · Last $65.54 × 210 D. Updated 9:31 AM ET."

The XLF sale filled in two executions at a single price ($56.9015 for 6.000000 + 0.168808 sh) —
a clean fractional split, not a partial fill at differing prices. Both orders were on the tape
within 105ms of submission.

## Realized: XLF −$5.27

| | |
|---|---|
| Basis | 6.168808 sh × $57.7561 = **$356.29** |
| Proceeds | 6.168808 sh × $56.9015 = **$351.01** |
| **Realized** | **−$5.27 (−1.48%)** |

This closes the XLF position opened 09-04 and topped up 09-08. Running totals: **equity legs
−$19.79**, options sleeve −$129.12, **total realized −$148.91**.

## Why the rotation fired

XLF failed the [[Staggered Daily Swing Rotation v3]] §3 trend filter on the 09-08 close — $57.30
against a 20-day SMA of $57.838, **$0.538 (0.93%) below**. Its 10-day return also went negative
(−1.58%), dropping it to **rank 7 of 8**. It failed on both tests at once, so this was not a
close call and there was no judgment to exercise.

**Both of yesterday's intraday checks called this in advance and correctly declined to act.** The
12:30 check logged XLF "$0.30 *below* its 20-SMA" and the 15:45 check "$0.42 below," each noting it
"would fail the §3 filter on current prices" and each explicitly deferring: *"logged for tomorrow's
re-rank rather than acted on."* That is the intended division of labour — checks observe, the 9:30
cycle decides — and it cost nothing: XLF opened today at $56.98 and we sold at $56.90, roughly
where it was when the close check flagged it. The rule against intraday rotation did not make this
exit worse.

XLE took the vacated slot on merit, rising rank 4 → rank 2. It is the name the 09-08 forward plan
called *"the outlier the ranking keeps ignoring: +11.41% over 20 days … stuck at rank 4 because its
10-day window is flat."* That window has now caught up. XLE still carries the strongest 4-week trend
in the universe at **+7.63%, roughly 10× the next-best name**.

SMH was left alone. It is still slot 1 and §5 sells only when a holding is no longer *a* target
slot — the same demote-but-hold logic that spared XLF from being churned yesterday, applied here as
plain hold-in-place. Its claim also strengthened materially: 10-day return +1.18% → **+4.93%**, and
its 20-day return crossed from −2.69% to **+0.76%**.

## The sleeve gate opened for the first time — and the trade was unaffordable anyway

Every previous sleeve non-entry was either a cash constraint or, on 09-08, the trend filter. Today
is the first time the **trend gate passed and the instrument was still out of reach**, and the
margin is not close.

The 45–90 DTE window (2026-10-24 → 2026-12-08) holds **exactly one SMH expiration — 2026-11-20**
(72 DTE). Oct 23 is 44 DTE, one day under the §4 floor; Dec 18 is 100 DTE. **This is the same
one-expiration cliff the 09-02 note found on XLE's chain**, so it should now be treated as a
property of these monthly chains, not a quirk of one underlying.

| SMH 2026-11-20 $570 Call | |
|---|---|
| Delta | 0.569 — inside 0.50–0.65 ✅ |
| DTE | 72 — inside 45–90 ✅ |
| Open interest | 389 ✅ |
| Mark (mid) | $42.625 |
| **Premium, 1 contract** | **$4,262.50** |
| **§4 cap (50% of $758.13)** | **$379.06** |
| **Verdict** | **blocked — 11.2× the cap, 80× settled cash** |

**The structural finding: the sleeve cannot trade an expensive underlying in an account this
size — the trend gate is irrelevant when the ticket is.** A ~0.55-delta call at ~72 DTE runs
roughly 7% of the underlying's price, so the sleeve's real constraint is about
*underlying price × 0.07 ≤ 50% of account value*. Both prior sleeve trades were XLE calls at
$273–$315 precisely because XLE trades at $59–$65. On today's account, SMH ($575), QQQ ($716),
SPY ($766) and GLD ($400) are all permanently unreachable; XLE ($66), XLF ($57), TLT ($82) and
IWM ($295) are reachable. **Whenever slot 1 is an expensive name the sleeve is dormant by
arithmetic, whatever the signal says** — worth knowing before the next "why didn't the sleeve
fire" question, because the answer today is not the signal.

For a sleeve that is **0-for-2 at −$129.12**, being priced out of a $4,262 position in a $758
account is not a loss to mourn.

## The leverage switch also opened, and was deliberately not taken

SMH's 20-day return crossing positive (+0.76%) technically opens the v3 leverage switch —
*"if a slot's target is SMH and semis' 4-week trend is positive, the slot buys SOXL instead."*
It was not acted on, for a reason worth recording rather than assuming:

**The switch governs what a slot buys, and no slot-1 buy was due today.** Slot 1 is already filled
with SMH; §5 authorises a sell only when a holding is no longer a target slot, and SMH is still
slot 1. Reading the switch as a standing instruction would mean liquidating a settled 1× position
into its 3× wrapper to chase a gate that opened by **76 basis points** — burning a spread and a
settlement day on a signal margin thinner than the one that has flipped slot 1 three cycles
running. That is a strategy change, not a mid-cycle judgment call, so it was left alone. Flagged
for the owner in [[2026-09-09 Daily Signals]] and on Home.

Worth noticing that this is the *same failure shape* as the sleeve's: a gate that moves daily
pointed at an instrument that does not. The sleeve has already cost −$129.12 learning that lesson.

## Hygiene and sizing

- **Settled funds only ([[Risk Rules v2]] §6), and the sequencing mattered.** At 9:30 the broker
  reported `unsettled_funds` **$0.0000** with $53.13 cash, so the entire $53.13 was genuinely
  settled and spendable. $51.00 was deployed (keeping the ~$2 buffer, actual $2.13). Immediately
  after the XLF sale `unsettled_funds` read **$351.02** — the broker correctly flags the fresh
  proceeds, and buying power of $353.15 now overstates what §6 permits by exactly that amount.
- **`unsettled_funds` was read from the broker before and after trading**, per the 09-08 lesson
  that two consecutive cycles mis-stated settlement dates from memory. It has now been checked
  rather than inferred on two consecutive runs.
- Nothing sold that was bought today; XLF's `intraday_quantity` was 0.000000 and
  `shares_available_for_sells` covered the full 6.168808 before the order.
- Market orders on penny-spread ETFs in regular hours only (XLF spread $0.01, XLE $0.01).
- Fresh UUID `ref_id` per logical order; both reviewed before placing.
- **The 9:35 open-volatility gate held.** The agent woke at 9:30:15, did the breaker check,
  signals, chain pricing, both order reviews and the signals note during the wait, and placed at
  9:35:06. The 08-28 early-exit bug did not recur. The wait is now enforced by a committed helper,
  `automation/wait-for-gate.py`, rather than by the agent's own discretion — the sandbox rejects
  inline `$(…)` time checks, which is what made the previous waits ad-hoc.

## Resulting book

| Slot | Position | Qty | Basis | Mark | Value | Unrealized |
|---|---|---|---|---|---|---|
| 1 | **SMH** | 0.615853 sh | $578.0599 ($356.00) | $574.76 | $353.97 | **−$2.03** |
| 2 | **XLE** | 0.778070 sh | $65.5468 ($51.00) | $65.57 | $51.02 | **+$0.02** |
| — | Cash | | | | $353.15 | — |

**The book is deliberately lopsided today and will stay that way for one session.** Slot 1 holds
$354, slot 2 holds $51 — not because XLE deserves less, but because $351.02 of the money that
belongs in it is unsettled until tomorrow. The account is **53% invested / 47% cash**, reversing
the 93%-invested balance achieved on 09-08. This is the recurring, understood cost of §6 under a
daily-rotation mandate: every rotation idles the rotated capital for a session. It is the same
trade-off Home has flagged as an open owner decision since 09-01, and it is visible here at
**$351 — 46% of the account — sitting out.**

## Next cycle (Thu 2026-09-10, 9:30 ET)

1. **The main job is funding slot 2.** $351.02 settles overnight; if XLE is still a qualifier,
   deploy it to bring slot 2 to parity with slot 1 (~$203 each, or top XLE toward ~$200 and hold
   the rest). Verify with `unsettled_funds`, not by counting days.
2. **Breadth is contracting — 5 of 8 qualifiers → 3.** All five failures fail the same test
   (price below the 20-day SMA); nothing is disqualified for being overbought, the highest RSI in
   the universe being XLE's 66.2. If QQQ (+0.14% over its SMA) slips, only two names qualify and
   any further loss puts a slot in cash.
3. **QQQ is the marginal qualifier** at $0.975 over its 20-SMA and rank 3 — the name most likely
   to change the target book, and it fell −0.33% this morning.
4. **SMH's 20-day return is +0.76% — a 76 bp margin.** Both the leverage switch and the sleeve gate
   hang off it, so it can flip back below zero on a single red session and shut both again.
5. **The sleeve stays dormant while slot 1 is SMH**, regardless of the trend gate — see the
   arithmetic above. It only re-opens if slot 1 becomes a cheap underlying (XLE, XLF, TLT).
