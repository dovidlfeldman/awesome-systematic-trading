---
tags: [trade, run, traded]
date: 2026-09-01
slot: "0930"
kind: cycle
outcome: Rotation GLD out, slot 2 to cash
---

# 2026-09-01 0930 Cycle — Rotation GLD out, slot 2 to cash

| | |
|---|---|
| Ran | 9:30–9:36 ET (orders placed 9:35:05, after the open-volatility gate) |
| Account | $837.70 (equity $424.03 + cash $413.67), +28.8% vs $650.54 contributed — or **−7.8%** vs $909.02 if the disputed deposit is real |
| Circuit-breaker | $325 — account at **2.58×** — clear |
| Signals | rank 1 **XLE** (+2.21% 10d, RSI 67.5), rank 2 **TLT** (+1.44% 10d, RSI 46.7); GLD rank 3 (+0.72%) |
| Target book | slot 1 **XLE**, slot 2 **TLT** |
| Held | **XLE** 6.564494 sh — unchanged. GLD **sold in full** |
| **Traded** | **GLD sell 1.029288 sh @ $399.3303, filled — rotation out of slot 2** *(table below)* |
| Options sleeve | Empty — **gate open and a conforming call is finally affordable ($207 vs a $419 cap)**, blocked only by settled cash |
| Realized / unrealized P&L | **−$84.96** / **+$13.53** |
| Blocked | Slot-2 TLT buy and the XLE sleeve — both deferred to 2026-09-02; proceeds are unsettled and Risk Rules v2 §6 forbids sizing off them |

## Orders

| Leg | Side | Qty | Type | State | Avg fill | Proceeds | `ref_id` | Order id |
|---|---|---:|---|---|---:|---:|---|---|
| GLD | sell | 1.029288 | market, GFD, regular hours | **filled** | **$399.3303** | **$411.03** | `85d625f1-7b6b-4e81-baa8-efa91758f646` | `6a96d489-c02b-4b36-b392-0e0792a7a061` |

Filled in two executions at a single price (1.000000 + 0.029288 sh), 9:35:05.21 ET, $0.00 fees.
Basis $430.99 at a $418.73 average → **realized −$19.97**, taking the account's realized total from
−$64.99 to **−$84.96**.

`review_equity_order` returned `order_checks: {}` — no broker alerts. Required market-data
disclosure, verbatim as returned at review time:

> Bid $399.20 × 120 Q · Ask $399.23 × 1120 Z · Last $399.18 × 40 Q. Updated 9:33 AM ET.

Three-cent spread on a $399 name (~0.75 bp) — comfortably inside the penny-spread standard that
[[Risk Rules v2]] §5 requires before a market order is allowed.

## Why GLD was sold

GLD lost slot 2 to TLT, and it lost it by **fifteen hundredths of a cent**.

TLT closed at **$82.5200** against a 20-day SMA of **$82.5185** — clearing the trend filter by
0.0018%. That single hundredth-of-a-percent is load-bearing: had TLT closed a tenth of a penny
lower it would have failed, GLD would have retained slot 2, and this cycle would have traded
nothing at all. Instead TLT qualified, its +1.44% ten-day return outranked GLD's +0.72%, GLD fell
to rank 3, and [[Staggered Daily Swing Rotation v3]] §5 requires the sell.

**It was executed mechanically and deliberately not overridden.** §3 defines qualification as
`close > 20-day SMA` with no band, buffer, or hysteresis anywhere in the spec. The morning a
knife-edge print costs you a position is precisely the wrong moment to invent a tolerance — that is
how a systematic book quietly becomes a discretionary one. If the owner wants a buffer (say,
qualify only at 0.1% above the SMA), that is a strategy amendment to make deliberately, in advance,
on a day when it isn't worth $411.

**The discretionary read agrees anyway, which is the reassuring part.** GLD is not a marginal hold
that got unlucky on a rounding error — it is genuinely rolling over. It peaked at $428.07 on 08-25
and has printed $421.32 → $422.60 → $408.89 → $408.42, and opened today at **$398.97, −2.3% on the
session and −6.8% off that high**. Its rank-1 standing last cycle only survived because everything
around it fell further. The sell would have been the right trade on a wider margin too; the
knife-edge only determined the *timing*.

Sale hygiene: GLD was bought 08-31 with fully settled cash, so there was no free-ride exposure, and
the broker reported `shares_available_for_sells` equal to the full position with `intraday_quantity`
of zero. No orders had been placed today before this one (`get_equity_orders` and
`get_option_orders` both empty for 2026-09-01 UTC), so this was a first run, not a duplicate.

## Why nothing was bought — and the settlement finding behind it

Slot 2 is empty tonight and the sleeve is still unarmed. Both come down to one number, and getting
to that number turned up something the vault has had wrong.

Immediately after the fill, `get_portfolio` reported **$413.67 of buying power** — the full GLD
proceeds, apparently spendable. Taken at face value that would have funded both the sleeve and a
TLT tranche today. It does not survive a second look:

| Field | Value |
|---|---|
| `cash` / `buying_power` | $413.67 |
| `unleveraged_buying_power` | $413.67 |
| **`unsettled_funds`** | **$411.03** |
| **Genuinely settled cash** | **$2.64** |

The proceeds are unsettled, and $2.64 — the required buffer — is all that is actually free.
**No buy was made, per the settled-cash-only rule.**

**The finding: this account is `type: limited_margin`, not a cash account.** That is why the broker
offers the unsettled $411.03 as buying power — trading unsettled proceeds is exactly what the
limited-margin upgrade exists to permit, and doing so would carry no good-faith-violation risk.

This matters because [[Staggered Daily Swing Rotation v3]] is architected around the claim that
same-day redeployment is *"structurally impossible"* and that *"a dollar that trades on day N cannot
trade again until day N+2."* **As a matter of broker mechanics, that is not true of this account.**
The real constraint is [[Risk Rules v2]] §6 — *"settled funds only for sizing"* — which is a
**policy** the owner adopted, not a wall the broker imposes. The whole tranche-stagger design rests
on a premise that turns out to be a choice.

Today that policy cost roughly one day of exposure on ~$411 (about half the book) plus a day's delay
on a sleeve that has been blocked for a month. It was still followed, because the canonical cycle
prompt says *"with settled cash only"* and *"never buy with unsettled proceeds"* in as many words,
and rewriting a documented risk rule mid-run to unlock a trade the same rule was written to prevent
is not a call an unattended agent should make. **Owner decision wanted:** keep §6 as a deliberate
conservatism, or relax it to match what the account can actually do. It is worth a real answer —
under a daily-cadence mandate this rule idles roughly half the book for a day after every rotation.

## The options sleeve is affordable for the first time

XLE taking slot 1 changed the sleeve's economics completely, and this is the most consequential
thing in today's cycle after the rotation itself.

The sleeve was never blocked by its gate. It was blocked because GLD at ~$408/share made a
conforming call cost multiples of the premium cap — most recently $1,292.50 against a $419.93 cap,
3.08× over. **XLE at ~$64.66 does not have that problem.** Live quotes, 9:32 ET:

| Contract | DTE | Delta | Mark | Premium | OI | Conforms? |
|---|---:|---:|---:|---:|---:|:---:|
| XLE Oct 16 **$65C** | 45 | **0.519** | $2.07 | **$207** | 7,903 | ✅ |
| XLE Oct 16 $64C | 45 | 0.598 | $2.54 | $254 | 3,018 | ✅ |
| XLE Nov 20 $65C | 80 | 0.538 | $2.99 | $299 | 34,374 | ✅ |
| XLE Oct 16 $63C | 45 | 0.670 | $3.20 | $320 | 4,736 | ❌ delta > 0.65 |

Three conforming contracts inside the **$419.07** cap (50% of $838.13 at check time), all on strikes
with four- and five-figure open interest. The gate is open on XLE's **+8.79%** 20-day return. Every
condition in the spec is met **except settled cash**.

Two consequences:

1. **The ~$2,585 re-arm threshold in [[00 - Home]] is obsolete.** It was a GLD-priced figure. With a
   $65 underlying in slot 1, the sleeve arms at roughly **$414** of account value — a level this
   account cleared long ago. The owner's 2026-08-25 instruction to *wait for a bigger account rather
   than relax the delta/DTE spec* has been honoured and is now moot: the spec fits as written.
2. **Nothing needs to be relaxed.** The 0.519-delta Oct 16 $65C sits mid-range on delta, at the
   45-DTE floor, on the most liquid near-money strike in the expiry.

This is the first genuine opportunity to exercise `review_option_order` / `place_option_order` under
the desktop allowlist — still untested since the automation was built, and worth watching tomorrow
for a permission failure rather than a pricing one.

## What comes close to firing tomorrow

- **TLT is the shakiest slot-2 the book has had, and today's tape already undercuts it.** It
  qualified by $0.0015 on last night's close and is trading **$81.98 right now, −0.66% and about
  $0.54 *below* the 20-SMA it qualified on**. On tonight's close it very likely fails the filter it
  passed last night. The settlement rule that blocked today's buy therefore acted as an accidental
  one-day confirmation lag: tomorrow's cycle re-scores TLT before a dollar is committed, and may
  well find slot 2 belongs to cash or to something else entirely. This is the rare case where the
  policy that cost exposure also avoided a probable whipsaw — worth recording honestly, but it is
  luck, not design.
- **Priority tomorrow is a real conflict.** Step 4 puts the sleeve first, then remaining cash into
  unfilled slots. With ~$413 settling, a $207 sleeve leaves ~$205 for slot 2 — workable. A $299
  Nov 20 contract would leave ~$113, which is a thin tranche. Absent a rule to the contrary the
  cheapest conforming contract (Oct 16 $65C) is the right pick, and it is also the one at the DTE
  floor, so it will need watching against the 21-DTE close rule from ~2026-09-25.
- **Breadth is deteriorating and the bench is now empty.** Qualifiers fell from 5 to 3; XLF (+0.23%)
  and SPY (−0.73%) both lost their 20-SMAs this session, joining QQQ, IWM and SMH below trend. Six
  of eight names are below their 20-SMA. If XLE or TLT rolls over, there is no fourth name to
  rotate into and §4 sends that slot to cash.
- **XLE is carrying the book alone.** It is 100% of equity exposure at $424.03 and the only name
  with genuine momentum (+8.79% 20d, RSI 67.5). Concentration is permitted by [[Risk Rules v2]] §2
  because it is the top-ranked asset, but RSI 67.5 leaves only 7.5 points of headroom under the 75
  disqualification cap — a strong further run in XLE could disqualify it and empty *both* slots.

## Open items carried forward

- **The +$258.48 deposit is still unconfirmed** (now three cycles running). Contributed capital and
  the breaker remain unchanged at $650.54 / $325 pending an owner answer. The breaker verdict does
  not depend on it — clear at 2.58× either way, or 1.84× against the $454.51 the deposit reading
  would imply. **Owner action still wanted.**
- **New today: the limited-margin / §6 question above.** Owner decision wanted.
- **The 9:35 gate race is still unfixed** in `run-daily-cycle.sh` — the bug that killed the 08-28
  cycle. This run again worked around it by hand, filling the 9:30→9:35 wait with read-only work
  (breaker, signals, chain pricing, note drafting) and placing at 9:35:05.
- **Commit/push permissions** were the 08-31 failure. Retested at the end of this run.

## Resulting position

| Slot | Symbol | Qty | Avg cost | Basis | Mark | Value | Unrealized |
|---|---|---:|---:|---:|---:|---:|---:|
| 1 | **XLE** | 6.564494 | $62.53 | $410.50 | ~$64.60 | $424.03 | **+$13.53** |
| 2 | *(cash)* | — | — | — | — | $413.67 | — |

Cash $413.67, of which **$411.03 unsettled** (settles 2026-09-02) and $2.64 free.
Options sleeve: empty.

Signals: [[2026-09-01 Daily Signals]].
