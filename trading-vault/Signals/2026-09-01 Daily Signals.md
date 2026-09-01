---
tags: [signal, daily]
date: 2026-09-01
cycle: 10
---

# 2026-09-01 Daily Signals — v3 cycle #10

Computed 9:32 ET from 74 daily bars (2026-05-15 → **2026-08-31 close**, split-adjusted, regular
hours). Rules: [[Staggered Daily Swing Rotation v3]] §§2–4 — rank by trailing 10-day return,
qualify on close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder), target book = top 2 qualifiers.

Run note: [[2026-09-01 0930 Cycle — Rotation GLD out, slot 2 to cash]].

## Signal table

| Rank | Symbol | Close (08-31) | 10d ret | 20d ret | 20-SMA | > SMA | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|:---:|---:|:---:|
| 1 | **XLE** | $63.96 | **+2.21%** | +8.79% | $61.5180 | ✅ | 67.5 | ✅ |
| 2 | **TLT** | $82.52 | **+1.44%** | +0.40% | $82.5185 | ✅ | 46.7 | ✅ |
| 3 | **GLD** | $408.42 | **+0.72%** | +9.88% | $406.6645 | ✅ | 54.2 | ✅ |
| 4 | XLF | $57.71 | +0.23% | +0.58% | $57.8525 | ❌ | 53.6 | ❌ |
| 5 | SPY | $767.05 | −0.73% | +1.24% | $769.6850 | ❌ | 54.0 | ❌ |
| 6 | QQQ | $716.76 | −1.80% | +2.38% | $718.7765 | ❌ | 52.1 | ❌ |
| 7 | IWM | $293.93 | −3.33% | −0.77% | $300.1410 | ❌ | 42.7 | ❌ |
| 8 | SMH | $556.63 | −6.30% | +2.05% | $569.6330 | ❌ | 46.3 | ❌ |

**Qualifiers:** XLE, TLT, GLD (3 of 8 — down from 5 last cycle).
**Target book:** slot 1 **XLE**, slot 2 **TLT**. Held book was GLD/XLE → **rotation owed: GLD out.**

## Read

**The slot swap Monday's note flagged arrived, and it brought a second one nobody was watching for.**

- **XLE takes rank 1**, as [[2026-08-31 Daily Signals]] predicted it would: Monday's +2.0% close
  ($62.68 → $63.96) lifted its 10-day return to +2.21%, clear of GLD's +0.72%. XLE is now the
  strongest name in the universe on every horizon that matters here — +8.79% over 20 days, RSI 67.5
  with headroom under the 75 cap, and $2.44 above its own 20-SMA. This is the cleanest rank-1 the
  book has had in weeks.
- **TLT displaced GLD from slot 2 by $0.0015.** This is the decision of the day and it deserves to
  be stated plainly: TLT closed at **$82.5200** against a 20-SMA of **$82.5185**. It clears the
  trend filter by **fifteen hundredths of a cent**, or 0.0018%. Had it closed a tenth of a penny
  lower, it would have failed, GLD would have held slot 2, and this cycle would have traded nothing.
  Instead TLT qualifies, its +1.44% 10-day return outranks GLD's +0.72%, and GLD is sold.
- **The knife-edge was executed mechanically, not overridden.** [[Staggered Daily Swing Rotation v3]]
  §3 defines qualification as `close > 20-day SMA` with no buffer, band, or hysteresis, and the
  right time to argue for one is not the morning it costs you a position. The discretionary read
  happens to agree with the mechanical one anyway — see below.
- **GLD is genuinely rolling over, which is why this is not just a rounding error.** It peaked at
  $428.07 on 08-25 and has printed $421.32 → $422.60 → $408.89 → $408.42, and is trading **$398.97
  at the open today, −2.3% on the session**. That is **−6.8% from the 08-25 high** and the third
  down-day in four. Its rank-1 spot last cycle was already only surviving because everything else
  fell further. A momentum system that keeps holding that is not following its own signal.
- **The qualifier set is shrinking.** Five names qualified on Friday; three do now. XLF (+0.23%) and
  SPY (−0.73%) both lost their 20-SMAs this session, and QQQ, IWM and SMH remain below theirs. Six
  of eight names are now below trend. Breadth is deteriorating, and the bench behind the book has
  gone from "thin but defensible" to **empty** — if XLE or TLT rolls over tomorrow, the fourth-best
  qualifier does not exist and §4 sends that slot to cash.
- **TLT is a weak slot-2 and today's tape already says so.** Its +0.40% 20-day return is barely
  positive, it clears trend by a rounding error, and it is trading **$81.98 right now, −0.66% and
  roughly $0.54 below the 20-SMA it qualified on**. On tonight's close it very likely fails the
  filter it passed last night. The one saving grace is that settlement means the account cannot buy
  it today anyway — see the run note; the T+1 wall accidentally acts as a one-day confirmation lag
  here, and tomorrow's cycle re-scores TLT before a dollar is committed to it.

## Options sleeve — the gate materially changed today

XLE holding slot 1 is the event the sleeve has been waiting on since 2026-08-25. The blocker was
never the gate; it was that GLD at ~$408/share made a conforming call cost more than the premium
cap allowed. XLE at ~$64.66 does not have that problem. Live quotes taken 9:32 ET:

| Contract | DTE | Delta | Mark | Premium | OI | Conforms? |
|---|---:|---:|---:|---:|---:|:---:|
| XLE Oct 16 **$65C** | 45 | **0.519** | $2.07 | **$207** | 7,903 | ✅ |
| XLE Oct 16 $64C | 45 | 0.598 | $2.54 | $254 | 3,018 | ✅ |
| XLE Nov 20 $65C | 80 | 0.538 | $2.99 | $299 | 34,374 | ✅ |
| XLE Oct 16 $63C | 45 | 0.670 | $3.20 | $320 | 4,736 | ❌ delta > 0.65 |

Three conforming contracts, all inside the **$419.07** premium cap (50% of account value), all on
strikes with four-to-five-figure open interest. **The sleeve is affordable for the first time in the
strategy's life** — the ~$2,585 re-arm threshold in [[00 - Home]] was a GLD-priced figure and is now
obsolete. It is blocked today only by settled cash ($2.64), not by the spec, and not by the cap.

That is a real change in the account's opportunity set and it is the thing to carry into tomorrow.

## Actions taken

**Rotation: GLD sold in full** — 1.029288 sh, market, regular hours, filled **$399.3303**, proceeds
$411.03, **realized −$19.97**. No longer a top-2 target.

**No buy.** Proceeds are unsettled until 2026-09-02 and free settled cash is $2.64, which *is* the
required buffer. Slot 2 sits in cash today by construction, not by choice. Options sleeve stayed
empty for the same reason — cash, not spec, and not the cap.

Worth flagging from this run: the broker offered **$413.67 of buying power** immediately after the
fill, because this account is `type: limited_margin` and unsettled proceeds are tradable in it. The
T+1 wall the strategy is built around is a **policy** ([[Risk Rules v2]] §6), not a broker
constraint. §6 was followed; the question is now the owner's.

Detail in [[2026-09-01 0930 Cycle — Rotation GLD out, slot 2 to cash]].
