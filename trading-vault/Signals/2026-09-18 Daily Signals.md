---
tags: [signals, daily]
date: 2026-09-18
cycle: 21
---

# 2026-09-18 Daily Signals — v3 cycle #21

Scored at 9:31 ET on bars through the **2026-09-17 close** (76 clean daily bars per name, none
interpolated). Rank = trailing 10-day return. Qualify = close > 20-day SMA **and** RSI(14) ≤ 75
(Wilder).

## The table

| Rank | Symbol | Close | 20-SMA | Cushion | 10d ret | 20d ret | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---:|:--|
| 1 | **SMH** | 560.6100 | 557.3060 | **+0.59%** | **+1.84%** | −0.06% | 49.9 | ✅ |
| 2 | **QQQ** | 716.9200 | 712.7095 | **+0.59%** | **+1.08%** | +0.12% | 52.8 | ✅ |
| 3 | TLT | 81.7800 | 82.0115 | −0.28% | −0.21% | −1.49% | 47.5 | ❌ trend |
| 4 | SPY | 762.6000 | 764.3490 | −0.23% | −0.33% | −0.84% | 49.8 | ❌ trend |
| 5 | XLE | 64.4800 | 64.0795 | +0.63% | −0.95% | +1.42% | 56.6 | ✅ (rank 5) |
| 6 | GLD | 398.3600 | 407.3210 | −2.20% | −1.10% | −3.74% | 48.5 | ❌ trend |
| 7 | IWM | 285.4300 | 293.1665 | −2.64% | −2.92% | −5.40% | 36.1 | ❌ trend |
| 8 | XLF | 55.8800 | 57.4300 | −2.70% | −3.09% | −2.78% | 37.2 | ❌ trend |

**Breadth: 3 of 8 qualify** — SMH, QQQ, XLE. Yesterday it was **0 of 8**, the only such reading in
v3 history. **Target book: slot 1 SMH, slot 2 QQQ.**

## What changed from yesterday

The 0-of-8 reading lasted exactly one session. Both intraday checks on 09-17 logged it reversing on
live prices — the 15:45 check had SMH +0.63%, QQQ +0.62% and XLE +0.54% back above their 20-SMAs and
called tomorrow's book **SMH/QQQ on live 10-day returns**. The settled bars agree: that is exactly
the book.

- **SMH goes rank 1** on a +1.84% 10-day return, its first slot-1 appearance since 09-10.
- **QQQ re-qualifies into slot 2** — it last held a slot on 09-08 and failed the trend filter on
  09-09 exactly as that day's 12:30 check predicted.
- **XLE qualifies but cannot buy anything.** It has the widest trend cushion in the universe
  (+0.63%) and the best 20-day return (+1.42%), but its **10-day return is −0.95%** and rank is what
  fills slots. It failed §3 by $0.0045 yesterday and is back over the line today — one session after
  the coupled unwind sold it. **Rank without qualification bought nothing on 09-11; qualification
  without rank buys nothing today.** The symmetry is the design, not a bug.
- **The RSI ≤ 75 ceiling has now gone twenty-one cycles without rejecting a single name.** Highest
  reading in the universe today is XLE's 56.6. Every one of the five failures is a trend failure.
  The filter is doing one job; the other half has never bound.

## The leverage switch fires for the first time

[[Staggered Daily Swing Rotation v3]]'s leverage note and [[Risk Rules v2]] §3 buy the **3x wrapper**
of a slot's target when the underlying's **trailing 4-week return is positive**. Today, for the first
time in 21 cycles, it is:

| Slot | Target | 4-week trend (20 trading days) | 4-week trend (28 calendar days) | Switch | Buys |
|---|---|---:|---:|:--|---|
| 1 | SMH | **−0.06%** (560.61 vs 560.92 on 08-19) | −0.36% | **OFF** | **SMH 1x** |
| 2 | QQQ | **+0.12%** (716.92 vs 716.08 on 08-19) | +0.84% | **ON** | **TQQQ** |

Both measures of "4 weeks" agree in sign for both names, so the call is robust to the definition —
which matters, because the 20-trading-day margin on QQQ is **12 basis points**, well inside what this
vault has repeatedly called calendar noise. It is executed as written anyway: the rule has no tie
band and no hysteresis, and the two prior attempts to argue for a band were both refuted by their own
first live tests (09-14, −$17.28 and −$17.56 against the mechanical rule).

**SMH's switch stays off by 31 basis points** — the wrapper that would have been SOXL. The same
−0.06% reading also shuts the options sleeve's entry gate (§9 requires the slot-1 underlying's
20-day return to be **positive**), so no call is bought today.

## Options sleeve

**Stays empty — the gate is shut on its own arithmetic**, not on affordability and not on rank.
Slot 1 is SMH and SMH's 20-day return is **−0.06%**. §9 opens the sleeve only on a *positive*
slot-1 20-day return, so the sleeve does not arm.

Worth recording that this is the first cycle since [[Decisions]] #1 in which the sleeve could have
been evaluated at all, and it was blocked at the entry gate rather than by the ticket price. Had the
gate been open, affordability would have blocked it anyway — **priced live rather than assumed**, per
the 2026-09-02 lesson that a contract must be quoted on the morning it is bought:

| | |
|---|---|
| Only conforming expiry | **2026-11-20** (63 DTE). The chain's 45–90 DTE window holds exactly one expiration again — Oct 30 is 42 DTE, Dec 18 is 91 DTE, both outside by a hair |
| Nearest conforming strike | **$565C** — 0.544Δ (inside 0.50–0.65), OI 773 |
| Mark | **$33.725** → **$3,372.50** per contract |
| [[Risk Rules v2]] §4 cap | **$333.25** (50% of $666.49) |
| Ratio | **10.1× the cap** |

**On this account the sleeve is reachable only when slot 1 is a cheap name**; of the eight names in
the universe only XLE, XLF, TLT and GLD have ever produced a conforming contract inside the cap, and
all four are below rank 3 today. Note the chain again offers exactly one expiry inside the DTE
window — the same cliff that cost 52% of premium on 09-02.

## Live tape at 9:32 ET

Broadly confirming, for once, rather than inverting:

| Symbol | Live | vs 09-17 close |
|---|---:|---:|
| SMH | 564.72 | **+0.73%** |
| QQQ | 719.36 | **+0.34%** |
| TQQQ | 72.07 | **+0.96%** |
| GLD | 399.90 | +0.39% |
| SPY | 761.67 | −0.12% |
| XLE | 64.32 | −0.25% |
| TLT | 81.43 | −0.43% |
| IWM | 284.66 | −0.27% |
| XLF | 55.71 | −0.30% |

Both names being bought are **up** on the session, so unlike 09-11 and 09-14 the settled bar and the
live tape point the same way and no stale-price mirror case arises. SMH's live price is **+1.33%
above its 20-SMA** and QQQ's **+0.93%**, so both would still qualify if re-scored right now.

## What would change tomorrow

- **SMH's 4-week trend is 31 bp from turning positive.** If it does, two things fire at once on the
  next cycle: the leverage switch would make slot 1 **SOXL**, and the options sleeve's entry gate
  would open. The sleeve would then be blocked on price (≈12× the cap) — but the SOXL swap would
  not be, and that is the larger exposure change. The base rolls off 08-19 (560.92) tomorrow, so the
  window alone moves this.
- **QQQ's switch is 12 bp from shutting.** A single red session takes slot 2 back from TQQQ to QQQ —
  though §5 only sells when a holding is no longer its target slot, and the 1x/3x wrapper question on
  an unchanged slot target is **not addressed anywhere in the written rules**. Flagged below.
- **The sleeve cannot open on SMH even if its gate turns.** At 10.1× the cap it is arithmetically
  unreachable, so the gate flipping positive changes the equity wrapper (SOXL) and nothing else.
- **XLE is the name to watch for a rank change,** not a qualification change: it is already the
  best-trending name in the universe on a 20-day basis and needs only its 10-day return to cross
  back over QQQ's +1.08%.
- SPY and TLT are the closest non-qualifiers, both within 0.3% of their 20-SMAs.

## Open question this cycle raises — no owner decision exists

**When a slot's target is unchanged but its leverage switch flips, does §5 force a swap?** §5 sells
only when a holding "is no longer its target slot." If TQQQ is held and QQQ's 4-week trend turns
negative tomorrow, slot 2's target is still QQQ — so §5 says hold, while §3 says a 3x wrapper
requires a positive trend. The two rules disagree and nothing in the vault resolves it. Today's buy
does not depend on the answer; tomorrow's hold might.

**This is a recommendation and a question, not a decision.** Recorded here and in
[[2026-09-18 0930 Cycle — Buys SMH + TQQQ (leverage switch fires)]] for the owner. Per the standing
rule in [[Decisions]], it will not be cited as authority by any later run unless the owner answers it
in that register.
