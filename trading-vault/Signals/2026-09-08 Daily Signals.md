---
tags: [signals, v3]
date: 2026-09-08
cycle: 13
---

# 2026-09-08 Daily Signals — v3 cycle #13

Scored on completed daily bars **through the 2026-09-04 close** (72 bars fetched, 65 needed).
Rank = trailing 10-day return. Qualify = close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder).
Base date for the 10-day window: **2026-08-21**.

## Signal table

| Rank | Sym | Close (09-04) | 10d return | 20d return | 20-SMA | Gap to SMA | RSI(14) | Qualifies |
|---|---|---|---|---|---|---|---|---|
| 1 | **SMH** | $567.010 | **+1.18%** | **−2.69%** | $565.4190 | +$1.591 | 51.02 | ✅ |
| 2 | **XLF** | $58.100 | **+1.08%** | +0.87% | $57.8640 | +$0.236 | 55.48 | ✅ |
| 3 | QQQ | $718.960 | +0.77% | −0.56% | $717.5105 | +$1.449 | 53.42 | ✅ |
| 4 | XLE | $64.060 | +0.66% | **+11.41%** | $62.8710 | +$1.189 | 63.17 | ✅ |
| 5 | SPY | $770.190 | +0.58% | −0.40% | $769.0530 | +$1.137 | 55.44 | ✅ |
| 6 | TLT | $82.210 | +0.20% | −0.66% | $82.3685 | −$0.159 | 45.18 | ❌ trend |
| 7 | IWM | $296.010 | −1.32% | −1.84% | $298.8655 | −$2.856 | 47.99 | ❌ trend |
| 8 | GLD | $406.770 | −3.92% | +2.08% | $409.8935 | −$3.124 | 52.35 | ❌ trend |

**Qualifiers: 5 of 8** (SMH, XLF, QQQ, XLE, SPY) — up from 4 of 8. Breadth keeps repairing:
QQQ crossed back above its 20-SMA (it missed by $0.044 last scoring), and no name has an RSI
anywhere near the 75 ceiling. The whole top five sits inside a **60 bp** band of 10-day return.

## Only one new session arrived, not three

[[00 - Home]] told this cycle to *"expect larger rank moves than a normal overnight — three
sessions of tape arrive at once."* **That was wrong, and wrong for the same reason as the
09-07 calendar error.** The last scoring (09-04 cycle) ran on bars **through the 09-03 close**;
Labor Day produced no bar. So exactly **one** new session — Friday 09-04 — entered the window.
The 10-day base rolled one day, 08-20 → 08-21.

One session was enough to reorder the book anyway, because of what happened in it.

## SMH takes slot 1 on a single session

SMH closed 09-04 at **$567.01, up +2.61%** from $552.60 — a one-day move that did three things
at once:

1. Took it from **rank 8 to rank 1** (10d −1.79% → +1.18%).
2. Carried it **through its 20-SMA** ($565.42) by $1.59, converting a `❌ trend` to a qualifier.
3. Left every other name behind: the next-largest 09-04 move was XLF's −0.79%.

Everything else in the table drifted. **The entire re-rank is one green semis print.**

## The leverage gate is shut — buy SMH, not SOXL

[[Staggered Daily Swing Rotation v3]]'s leverage note says a slot targeting SMH buys **SOXL**
instead *if semis' 4-week trend is positive.* It is **not**: SMH's 20-day return is **−2.69%**.
The gate is closed, so the slot buys **1x SMH**.

This is the strategy disagreeing with itself in a useful way, and it is worth stating plainly:
**SMH is rank 1 on 10-day momentum while its 4-week trend is still negative.** It is the only
name in the top five where those two disagree, and the rebound is 1 session old against 20 days
of decline. The rules make it slot 1 regardless — rank is the 10-day return, full stop — but the
same fact that qualifies it for the equity slot disqualifies it for both leverage and the sleeve.
Two of the three gates that could have amplified this pick are shut on it.

## Target book

| Slot | Target | Was | Action |
|---|---|---|---|
| 1 | **SMH** | XLF | **buy** — new name, slot 1 changes hands for the third cycle running |
| 2 | **XLF** | SPY | **hold XLF, sell SPY** — XLF demotes 1 → 2 but stays in the book |

**XLF is not sold.** §5 sells a holding only when it is no longer *a* target slot; XLF slid from
slot 1 to slot 2 and remains a target, so moving it would be pure churn — a spread paid to swap a
label. **SPY drops to rank 5 and is sold.**

**Options sleeve: STAY EMPTY.** The entry gate requires the slot-1 underlying's 20-day return to
be positive. SMH's is **−2.69%**, so the gate is shut and no call is bought — the first time the
sleeve has been blocked by its own trend filter rather than by cash. Given the sleeve is
**0-for-2, −$129.12**, a gate that refuses to buy a 45–90 DTE call on a name whose 4-week trend is
negative is the gate working.

## Slot 1 has now changed hands three cycles in a row

XLE (09-02) → XLF (09-04) → SMH (09-08). Each handoff was decided by a margin of **1.4 bp to 1.4
pp** of 10-day return, and the top five are inside 60 bp today. The hysteresis question
[[00 - Home]] raised on 09-04 is not getting quieter: **on this tape, slot 1 is close to a coin
flip re-run every session, and each flip costs a spread.** Recorded, not acted on — it is a
strategy change, not a mid-cycle judgment call.

## What would change tomorrow

- **SMH gives back Friday.** It needs to fall only ~$1.60 to lose its 20-SMA and drop out of the
  qualifier set entirely — the position bought today is *one session* above disqualification.
- **XLF is the thinnest qualifier by gap**, $0.236 (0.41%) above its 20-SMA, and opened today
  −0.96%. A flat-to-down session puts slot 2 back on the boundary.
- **QQQ and XLE are 31 and 42 bp behind slot 2.** Either takes a slot on one ordinary session.
- **XLE is the outlier the ranking keeps ignoring:** +11.41% over 20 days, the strongest 4-week
  trend in the universe by 5x, sitting at rank 4 because its *10-day* window is flat. It is also
  the one name whose sleeve gate would be wide open.
