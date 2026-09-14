---
tags: [signals, v3]
date: 2026-09-14
cycle: 17
---

# 2026-09-14 Daily Signals — v3 cycle #17

Scored at 9:31 ET on completed daily bars **through the 2026-09-11 close** (82 bars fetched,
`interval=day`, `bounds=regular`, split-adjusted). Ranked by trailing 10-day return; qualifies
if `close > 20-day SMA` **and** `RSI(14) ≤ 75` (Wilder).

| Rank | Symbol | Close (09-11) | 10d return | 20d return | 20-day SMA | vs 20-SMA | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---:|:--|
| 1 | **XLE** | $65.1400 | **+4.58%** | +6.68% | $63.7185 | **+2.23%** | 66.1 | ✅ **yes** |
| 2 | **SMH** | $568.5300 | −0.78% | −3.50% | $563.4460 | **+0.90%** | 51.4 | ✅ **yes** |
| 3 | QQQ | $714.8800 | −0.86% | −2.35% | $715.6680 | −0.11% | 50.8 | ❌ trend |
| 4 | SPY | $764.2900 | −0.88% | −1.75% | $766.8790 | −0.34% | 50.3 | ❌ trend |
| 5 | XLF | $57.2500 | −1.09% | −1.73% | $57.6985 | −0.78% | 48.3 | ❌ trend |
| 6 | TLT | $80.8700 | −2.72% | −2.08% | $82.2000 | −1.62% | 35.3 | ❌ trend |
| 7 | IWM | $288.8900 | −3.64% | −4.81% | $296.6015 | −2.60% | 38.7 | ❌ trend |
| 8 | GLD | $398.7700 | −5.64% | −0.05% | $409.4345 | −2.60% | 47.5 | ❌ trend |

**Qualifiers: 2 of 8** (XLE, SMH) — up from 1 of 8 on 09-11.
**Target book: slot 1 XLE, slot 2 SMH.**

## Reading

**XLE is unchallenged at rank 1 for a fifth consecutive session.** Its 10-day return (+4.58%) is
the only positive number in the column, and by a factor of ~4 over the runner-up — which is
itself negative. It clears the trend filter by 2.23% and its RSI of 66.1 is the highest in the
universe while still sitting comfortably under the 75 ceiling. Nothing in this table threatens
slot 1, which also means **nothing threatens the options sleeve** (its only rank-based close
condition is XLE *losing* slot 1).

**SMH re-qualifies one session after being sold, exactly as Friday's forward plan predicted.**
It closed 09-11 at $568.53, **$5.08 (0.90%) above** its 20-SMA of $563.45 — having closed 09-10
at $4.20 *below* it, which is what triggered Friday's sale at $566.80. The two-day round trip
flagged in the 09-11 note as "the likely Monday outcome" is the actual Monday outcome. Note that
**SMH qualifies on trend while its 20-day return is −3.50%** — the same split that the 09-08 note
raised for the owner's attention (slot selection never consults the 4-week trend that both the
leverage gate and the sleeve gate read).

**Breadth improved from 1 to 2, but only barely, and the whole distribution is negative.** Six of
eight names fail on trend alone; none is disqualified for being overbought (top RSI is XLE's
66.1, and the median is ~49). The broad gap-up that the 09-11 note thought "could re-qualify
five names at once" did not stick — QQQ, SPY and XLF all still closed under their 20-SMAs, three
of them within 1%. This is a market with one working trend and a lot of names hovering at the
line.

## Gates

- **Leverage switch: SHUT.** Slot 2's target is SMH, and the v3 leverage rule substitutes SOXL
  only on a *positive* 4-week trend. SMH's 20-day return is **−3.50%** → buy 1× SMH, not SOXL.
  This is the third time the gate has refused the 3× wrapper, and today it was worth a great deal:
  **SOXL opened −16.9%** ($121.82 → $101.23) against SMH's −5.05%.
- **Options sleeve: no new entry owed** — the sleeve is not empty (1 XLE Nov 20 $66C). All three
  close conditions pass: XLE holds rank 1, XLE's 20-day return is **+6.68%** (needs negative to
  fire), and the contract has **67 DTE** (floor 21).

## The live tape disagrees with this table, hard

Scored on completed bars, SMH is a qualifier. **At 9:31 ET it is trading $539.81, −5.05% on the
day** — which is **$23.64 (4.2%) below** the 20-SMA that it cleared by $5.08 on Friday's close.
On live prices SMH fails §3 outright, and not marginally.

This is [[2026-09-11 Daily Signals]] in a mirror. Friday the universe gapped *up* and SMH was
sold into strength on a stale failing close; today it gaps *down* and is bought into weakness on
a stale passing close. Both trades are correct under the rules as written, which define the
signal on completed daily bars — and the 09-11 note committed to that reading explicitly, at a
moment when overriding it would have *avoided* a realized loss. Declining to buy today because
the tape looks bad, one session after executing a sale that the tape said was wrong, would not be
risk management. It would be a strategy that sells on stale bad news and refuses to buy on fresh
bad news — a ratchet that no backtest supports.

Executed as written. **See the run note; the staleness question is now the account's most
expensive open item, two sessions running.**
