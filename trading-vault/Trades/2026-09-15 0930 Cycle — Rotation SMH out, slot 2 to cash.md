---
tags: [trade, run, traded]
date: 2026-09-15
slot: "0930"
kind: cycle
outcome: Rotation SMH out, slot 2 to cash
---

# 2026-09-15 0930 Cycle — Rotation SMH out, slot 2 to cash

| | |
|---|---|
| Ran | 09:30 ET (signals 9:31, orders held to the 9:35 gate, filled 9:35:11) |
| Account | **$726.67** (equity $106.35 + options $264.00 + cash $356.32), **+11.7%** vs $650.54 contributed — or **−20.1%** vs $909.02 if the disputed +$258.48 is an owner deposit |
| Circuit-breaker | $325 — account at **2.24×** ($401.67 headroom) — **clear** |
| Signals | rank 1 **XLE** (+2.95% 10d, RSI 61.0, **the only qualifier**); rank 2 QQQ (−1.01% 10d, RSI 46.7) **fails trend**; SMH rank 5 (−2.10% 10d), **fails trend by 3.50%** |
| Target book | slot 1 **XLE**, slot 2 **cash** — 1 of 8 qualifies |
| Held | **XLE** 1.632641 sh + 1 Nov 20 $66C — unchanged |
| **Traded** | **1 fill — sold 0.647844 SMH @ $546.6401 ($354.14), realized +$5.14** |
| Options sleeve | **held** — all three close conditions pass (XLE still rank 1, 20d +4.23%, 66 DTE) |
| Realized / unrealized P&L | **+$5.14 today** (−$150.70 to date) / **−$31.58** |
| Blocked | **1 — no buy leg.** Slot 1 top-up refused: `unsettled_funds` $354.14, settled cash $2.18 (the buffer). Slot 2 has no qualifier to buy anyway |

## Orders

| # | Sym | Side | Type | Size | Fill | `ref_id` | Result |
|---|---|---|---|---|---|---|---|
| 1 | SMH | sell | market, GFD, regular hours | 0.647844 sh (full position) | **$546.6401** | `9aeac1bb-5f4d-4909-b1f2-f69a467f7f93` | filled 09:35:11.593, **0.12 s**, $0 fees, order `6aa9498f…` |

Reviewed before placing, per §5. `review_equity_order` returned **`"order_checks": {}`** — no broker
alerts of any kind. Compliance disclosure returned with the review, verbatim:

> Bid $546.62 × 240 P · Ask $546.91 × 80 Q · Last $546.64 × 120 D. Updated 9:35 AM ET.

Filled at **$546.6401 — the bid, to the hundredth of a cent**, i.e. zero slippage on a market
order into a 29-cent book. Proceeds $354.14 against a $349.00 basis: **realized +$5.14**.

## Why SMH sold

SMH closed 2026-09-14 at **$541.50, $19.63 (3.50%) below its $561.13 20-day SMA** — a §3 trend
failure. It is also rank 5, and its 20-day return deteriorated **−3.50% → −7.88%** in one session.
Rank without qualification buys nothing, so it is no longer *a* target slot and §5 sells it.

**This is the sale yesterday's note said to expect, and it is the cost side of the staleness
trade paid in full.** The 09-14 cycle bought SMH at 9:35 on the strength of the 09-11 close, while
the live tape had it 4.2% below its 20-SMA, and flagged ex-ante that *"this may well be today's
loser."* One session later it is sold. The round trip is **one session long and cost a spread.**

**But the ex-ante flag was wrong about the direction.** SMH did not fall — it rose **+1.47%** from
the $538.7099 fill to the $546.6401 exit, and today's sale is the **first profitable equity leg
since 2026-08-25**. Saying so is the point of having flagged it in writing: the prediction was
recorded, and it missed.

## Why nothing was bought

**Settled cash is $2.18 — the buffer, and nothing more.**

| Reading | Value | Source |
|---|---|---|
| Cash | $356.32 | `get_portfolio` |
| `unsettled_funds` | **$354.14** | `get_accounts` |
| **Settled** | **$2.18** | difference |
| Buying power offered | **$356.32** | `get_portfolio` — the broker offers the proceeds |

`unsettled_funds` moved $0.0000 → **$354.14** across the fill, matching the proceeds to the cent.
This is the read the 09-08 lesson demands — **the broker's figure, taken before any date
arithmetic is believed** — and here it says plainly that today's proceeds are today's proceeds.

**The broker would let the money trade; [[Risk Rules v2]] §6 will not.** This account is
`limited_margin`, so buying power shows the full $356.32 with no good-faith-violation risk. §6
("settled funds only for sizing") is the owner's conservatism, not a broker wall — the same
distinction found on 2026-09-01 and resolved the same way then. Rule followed as written.

**It costs nothing today.** Even with the cash free, there is nowhere to put it:

- **Slot 2 has no qualifier.** 1 of 8 names qualifies. §4 sends the unfilled slot to cash.
- **Slot 1 is already held** (1.632641 sh XLE + the Nov 66C). A top-up is the only trade the cash
  could fund, and it would be **adding to a 51%-of-account position with the other 49% in cash** —
  which §6 defers to tomorrow regardless.

So unlike 09-01, where §6 idled half the book while a real target went unbought, today §6 and the
signal agree. **The account is deliberately 49% cash: that is what a 1-of-8 breadth reading buys.**

## Options sleeve — held, and the asymmetry held again

1 XLE Nov 20 $66C, cost $2.95 ($295.00), marked **$2.64** — unrealized **−$31.00**, recovered from
−$66.00 at yesterday's close as XLE rallied +1.01% to $65.185. Delta back through the middle of the
band at **0.501** (0.459 yesterday).

All three close conditions re-read this morning, per the 09-02 lesson that conformance is a
property of the morning you check it:

| Test | Reading | Fires? |
|---|---|---|
| Underlying lost slot 1 | XLE is rank 1 **and the only qualifier** | no |
| Underlying 20d return negative | **+4.23%** | no — needs XLE ≤ $61.91 |
| < 21 DTE | **66 DTE** (floor reached 2026-10-30) | no |

**The sleeve survived a slot-2 liquidation untouched for the second time in three sessions**, and
for the same structural reason: none of its three tests reads slot 2. With **no second qualifier in
the universe**, there is nothing that can outrank XLE, so the only live path to a sleeve close is
XLE's *own* trend breaking or the calendar reaching 10-30. **Today the sleeve is as safe as its
design allows — and it is safe because breadth collapsed**, which remains the strangest true thing
about it.

Premium at risk **$295.00 / $726.67 = 40.6%** of account, inside the §4 50% cap.

## The hysteresis band, second live test — mechanical rule wins again

Yesterday's note downgraded the rank-boundary hysteresis band from "urgent" to "open question"
after it lost its first test by $17.28. Today's sale scores the same counterfactual one session
further on, and it lands in the same place:

| | Shares | Basis | Value at $546.6401 | P&L |
|---|---|---|---|---|
| **Band** (hold SMH through 09-11) | 0.615853 | $356.00 | $336.65 | **−$19.35 unrealized**, still holding a §3 failure |
| **As executed** (sell 09-11, re-buy 09-14, sell today) | — | — | flat in cash | **−$1.79 realized** (−$6.93 + $5.14) |

**The mechanical rule is ahead by $17.56** — within 28 cents of yesterday's $17.28, because the
gap was opened by the 09-11→09-14 drawdown and today's move simply carried both sides equally.
That is worth stating precisely: **today is not an independent third data point in the band's
favour.** It is the same $17 gap, re-measured. The band's case should not be closed on it, and the
09-14 caution against re-deciding this on two data points stands.

What *is* new: the whipsaw that looked like the band's best argument — sell 09-11, re-buy 09-14,
sell 09-15 — netted **−$1.79 across two full round trips**, against a −$19.35 mark for simply
holding. **Churn was cheap and being wrong was expensive**, which is the opposite of the intuition
the band is built on.

## Hygiene

- Circuit-breaker read **first**, before any order: $726.67 vs $325 = **2.24×**, clear.
- Fresh UUID `ref_id` on the one logical order; no retries, no replacements.
- Market order on a penny-spread ETF in regular hours only (§5) — SMH's book was 29 cents wide on
  a $546 name (5 bp) and filled at the bid.
- **Nothing sold that was bought with unsettled funds.** SMH was bought 09-14 with cash that
  settled that morning; `intraday_quantity` was **0.000000** and `shares_available_for_sells` the
  full 0.647844, so it was neither bought today nor held for anything.
- Orders held to the **9:35 open-volatility gate** — signals, breaker, position reads and this
  note's draft all done during the 9:30–9:35 wait, order placed at 9:35:11. The 08-28 early-exit
  bug did not recur.
- Re-checked `get_equity_orders` / `get_option_orders` with `created_at_gte=2026-09-15` before
  acting: both empty, so this is the day's first and only run.

## Resulting book

| Slot | Position | Cost | Mark | P&L |
|---|---|---|---|---|
| 1 | XLE 1.632641 sh | $107.00 | $106.42 | −$0.58 |
| 1 (sleeve) | XLE Nov 20 $66C ×1 | $295.00 | $264.00 | −$31.00 |
| 2 | **cash** | — | $356.32 | — |

**XLE is 51.0% of the account** ($106.42 equity + $264.00 premium), cash 49.0%. Compliant under
§2 — up to 100% is permitted for the top-ranked asset, and this concentration arrived from the
system rather than from conviction.

Realized to date **−$150.70** (equity legs **−$21.58**, options sleeve **−$129.12**).
**The equity book's realized loss is now under $22** and has improved in two of the last three
rotations; the sleeve has not closed a trade since 09-04.

## Forward plan — next cycle Wed 2026-09-16, 9:30 ET

1. **$354.14 settles overnight and is spendable Wednesday.** T+1 from Tue 09-15 is **Wed 09-16**;
   the next US market holiday is **Thanksgiving 2026-11-26**, so no holiday intervenes. **Verify
   with `unsettled_funds` before believing that sentence** — it has been wrong from memory twice,
   in both directions.
2. **Expect to deploy roughly half the account.** If breadth stays at 1, the whole $354 goes to a
   slot-1 XLE top-up, taking XLE to ~99% of the book. **That is a much larger single-name bet than
   anything this account has carried** — permitted by §2, but worth the owner seeing coming.
3. **Watch for breadth recovering.** QQQ (−0.75%), SPY (−0.68%) and XLF (−1.06%) are all within
   ~1% of their 20-SMAs and all three rose this morning. A single green session re-opens slot 2 and
   sends the cash there instead. Nothing is disqualified on RSI — the top reading in the universe
   is 61.0.
4. **The sleeve needs nothing unless a new name takes rank 1.** 65 DTE tomorrow, XLE 20d comfortably
   positive. **Re-read all three tests anyway.**
5. **The 09-04 sleeve-design question remains the highest-value open fix** — close on XLE's *own*
   trend and DTE rather than on losing a relative rank. The sleeve recovered $35 this morning and
   is the account's entire loss story; this is still the calm moment to decide it.
6. **The leverage switch should be written down as a buy-time rule.** Fifth consecutive cycle to
   say so. It did not bind today (no slot targets SMH), but semis' 4-week trend is **−7.88%** and
   the gate has now been shut for five straight sessions on inference alone.
7. **Still open, unchanged:** the **+$258.48** cash of 2026-08-28 is unconfirmed. Contributed
   capital and the breaker remain at $650.54 / $325 pending the owner. **Owner action wanted.**
