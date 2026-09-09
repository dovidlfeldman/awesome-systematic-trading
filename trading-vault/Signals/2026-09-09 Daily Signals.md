---
tags: [signals]
date: 2026-09-09
cycle: 14
---

# 2026-09-09 Daily Signals — v3 cycle #14

Scored on bars through the **2026-09-08 close** (one fresh session since the 09-08 cycle, which
ran on 09-04 bars). Universe: 8 names. Method per [[Staggered Daily Swing Rotation v3]] §1–4 —
rank by trailing 10-day return, qualify on close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder).

| # | Sym | Close | 10d ret | 20d ret | 20-SMA | Gap to SMA | RSI(14) | Qualifies |
|---|---|---|---|---|---|---|---|---|
| 1 | **SMH** | $573.73 | **+4.93%** | +0.76% | $565.635 | **+$8.095 (+1.43%)** | 53.4 | **YES** |
| 2 | **XLE** | $64.77 | **+2.63%** | **+7.63%** | $63.100 | **+$1.669 (+2.65%)** | 66.2 | **YES** |
| 3 | QQQ | $718.36 | +1.70% | −0.35% | $717.385 | +$0.975 (+0.14%) | 53.0 | YES |
| 4 | SPY | $765.96 | +0.33% | −0.91% | $768.699 | −$2.739 (−0.36%) | 51.2 | no — below 20-SMA |
| 5 | TLT | $82.20 | −0.44% | +0.17% | $82.376 | −$0.175 (−0.21%) | 45.1 | no — below 20-SMA |
| 6 | IWM | $294.67 | −1.11% | −1.77% | $298.600 | −$3.930 (−1.32%) | 45.8 | no — below 20-SMA |
| 7 | **XLF** | $57.30 | **−1.58%** | −0.88% | $57.838 | **−$0.538 (−0.93%)** | 48.0 | **no — below 20-SMA** |
| 8 | GLD | $399.72 | −6.32% | −0.70% | $409.752 | −$10.032 (−2.45%) | 47.7 | no — below 20-SMA |

**Qualifiers: 3 of 8** (SMH, XLE, QQQ) — down from 5 of 8 on 09-08. No name is anywhere near the
RSI-75 ceiling; the highest reading in the universe is XLE at 66.2. Breadth is contracting, and
every one of the five failures fails the *same* test: price below the 20-day SMA. Not one name in
this universe is disqualified for being overbought.

**Target book: slot 1 SMH, slot 2 XLE.**

## What changed since 09-08

- **XLF fell out of the book, exactly as both of yesterday's checks warned.** The 12:30 and 15:45
  checks each logged XLF sliding below its 20-SMA and each explicitly deferred the call to this
  morning's cycle ("logged for tomorrow's re-rank, not acted on"). It closed 09-08 at $57.30,
  **$0.538 below** the average — and its 10-day return also went negative (−1.58%, rank 7 of 8).
  It now fails on both the trend filter *and* the rank. The deferral cost nothing and the process
  worked as designed: a check observed, the cycle decided.
- **XLE is back, and it took slot 2 on merit.** Rank 4 → rank 2 on a +1.10% session. It carries
  **+7.63% over 20 days — the strongest 4-week trend in the universe by 10×** — and has held that
  distinction through three cycles of being ignored by a 10-day ranking. Its 10-day window has
  finally caught up to its 20-day one. This is the "outlier the ranking keeps ignoring" from the
  09-08 forward plan, resolving in the direction that note predicted.
- **SMH consolidated its slot-1 claim.** Yesterday it was rank 1 on a single green session with a
  +1.18% 10-day return and a *negative* 20-day trend. One more session later it is +4.93% over 10
  days (a 4× widening of its lead) and its 20-day return has crossed **positive at +0.76%**. The
  "one green Friday old" thesis is now two sessions old and materially stronger — though see the
  leverage note below, because +0.76% is a thin margin to hang a 3× decision on.
- **SPY dropped out.** It was slot 2 as recently as 09-08's open and is now below its 20-SMA.

## The two gates that read the 20-day return both flipped open — and both still declined

The 09-08 note flagged that SMH was slot 1 *"on a signal two other gates distrust"*: the leverage
switch and the options sleeve both read the 20-day trend, and SMH's was −2.69%, so both refused.
Today SMH's 20-day return is **+0.76%**. Both gates are now technically open. Neither fired:

1. **Leverage (SMH → SOXL).** [[Staggered Daily Swing Rotation v3]] §"Leverage note" swaps the 3×
   wrapper in when a slot's target is SMH *and* semis' 4-week trend is positive. It is — barely.
   But the switch governs what a slot **buys**, and slot 1 is already filled: §5 sells only when a
   holding is no longer a target slot, and SMH is still slot 1. **No new slot-1 buy is due today,
   so there is nothing for the switch to act on.** Churning a held 1× position into its 3× wrapper
   to chase a gate that opened by 76 basis points is not something §5 authorises, and it is not a
   call to make mid-cycle. See the open question below.
2. **Options sleeve.** Gate open for the first time since the sleeve was last empty — and the
   instrument is unaffordable. Detail below.

## Sleeve: the gate opened and the contract is 11× out of reach

For the first time, the sleeve's **trend** gate is not what blocks it. SMH's 20-day return is
positive, the sleeve is empty, so [[Risk Rules v2]] §4 sizing is the only remaining test — and it
fails by an order of magnitude.

The 45–90 DTE window (2026-10-24 → 2026-12-08) contains **exactly one SMH expiration: 2026-11-20**
(72 DTE). 2026-10-23 is 44 DTE and falls a day short of the §4 floor; 2026-12-18 is 100 DTE and
overshoots. **This is the same one-expiration cliff the 09-02 note recorded on XLE's chain**, and
it is now confirmed as a property of these chains generally, not a quirk of one underlying.

The conforming contract:

| | SMH 2026-11-20 $570 Call |
|---|---|
| Delta | **0.569** — inside the 0.50–0.65 band ✅ |
| DTE | **72** — inside 45–90 ✅ |
| Open interest | 389 — liquid enough ✅ |
| Mark (mid) | **$42.625** |
| **Premium for 1 contract** | **$4,262.50** |
| **§4 cap (50% of $757.95)** | **$378.97** |
| **Verdict** | **Blocked — 11.2× the cap, 80× settled cash** ❌ |

**The finding worth keeping: the sleeve cannot trade a $573 underlying in a $758 account, ever.**
Both prior sleeve trades were on XLE at $59–$65, where one contract cost $273–$315 — affordable
because the underlying was cheap. A single ATM-ish call is ~7% of the underlying's price at 72 DTE,
so the sleeve's real constraint is roughly *underlying price × 0.07 ≤ 50% of account value*. At
this account size that caps the sleeve at underlyings below ~$500, and comfortably only below
~$150. Of this universe, SMH ($574) and QQQ ($716) and SPY ($766) and GLD ($400) are permanently
out of reach; XLE ($65), XLF ($57), TLT ($82) and IWM ($295) are not. **Whenever slot 1 is an
expensive name, the sleeve is structurally dormant regardless of what its trend gate says.** That
is worth knowing before the next "why didn't the sleeve fire" question — it was not the signal.

Given the sleeve is **0-for-2 at −$129.12**, being priced out of a $4,262 position in a $758
account is not a loss worth mourning.

## Open question this cycle raises

**Should the leverage switch apply to a position already held, or only to new buys?** As written it
reads as a buy-time instruction, which is how it was applied today. But that means the account can
hold 1× SMH for weeks while the gate sits open, and would only ever get the 3× wrapper by accident
of a rotation cycle. The alternative — swap on the gate — churns a settled position for a 76 bp
signal margin and burns a settlement day. **Recommend leaving it as a buy-time rule** (which also
avoids the sleeve's exact failure mode: a fast gate driving a slow instrument), but it should be
written down explicitly rather than left to interpretation. Owner call.

## Book action taken

- **Sell XLF** in full (6.168808 sh) — rank 7, below its 20-SMA, no longer a target slot.
- **Buy XLE** with settled cash only (~$51 of $53.13, keeping the ~$2 buffer) — new slot 2.
- **Hold SMH** — still slot 1, no action.
- **Sleeve: no entry** — priced out as above.

Full execution detail in [[2026-09-09 0930 Cycle — Rotation XLF out, XLE in]].
