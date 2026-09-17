---
tags: [trade, run, no-action]
date: 2026-09-17
slot: "1545"
kind: check
outcome: No Action
---

# 2026-09-17 1545 Check — No Action

| | |
|---|---|
| Ran | 15:45 ET |
| Account | $666.49 (equity $0.00 + cash $666.49), **−26.7% vs $909.02 contributed** |
| Circuit-breaker | $454.51 — account at **1.47×** ($211.98 headroom) — clear |
| Positions | **none — 100% cash** (second consecutive check against a flat book) |
| Options sleeve | **empty** (closed 09-17 09:35 at $2.06, −$89.04) |
| Sleeve tests | 20d-return test: **n-a** · <21-DTE test: **n-a** — no contract to test |
| Settlement guard | not binding — nothing held, so nothing can be sold |
| **Traded** | **none — no exit condition met** |

## What was looked at

Broker-verified rather than inherited from this morning's note: `get_portfolio` returns
$666.49 with **equity $0, options $0, cash $666.49**; `get_equity_positions` and
`get_option_positions` both return empty lists; and the day's order tape is still **exactly
two orders, both from the 9:35 coupled unwind** (XLE equity sell at $63.8401, XLE Nov 20 $66C
sell-to-close at $2.06), with nothing pending, nothing partially filled, and no order placed by
anyone since. `unsettled_funds` reads **$310.17**, matching today's proceeds
($104.23 equity + $205.96 option) to the cent; it settles **Fri 2026-09-18**.

**Step 1 — breaker.** Checked first, before anything else. $666.49 against the **$454.51**
level ([[Risk Rules v2]] §7, raised today on [[Decisions]] #2) is **1.47×**, $211.98 of
headroom. Clear, and identical to the 12:30 reading to the cent — with the book 100% cash there
is no mark-to-market, so the account value literally cannot move between checks. Nothing here
is close to firing; the account would have to fall $212 in cash, which cash does not do.

**Step 2 — sleeve.** There is no options position, so both tests are **n-a rather than
passing**: there is no underlying whose 20-day return could turn negative and no contract that
could fall through 21 DTE. Worth stating because it is the first full session under
[[Decisions]] #1, which deleted the rank clause — the sleeve now exits only on its own two
tests. That decision changes nothing today because there is nothing to hold; its first real
test comes whenever the 9:30 cycle next arms a contract.

**Step 3 — equities: no action, and none was possible.** There is no equity position to sell,
so even the one thing this check is permitted to do had no target. **No buys and no rotation
were made — that is a rule of this check, not an outcome.**

## Logged, not acted on: the 0-of-8 reading has kept reversing all day

This morning's cycle sold everything because **zero of eight names qualified**. On live prices
at 15:45 that has flipped further than it had at midday — **three names are now above their
20-day SMAs**, and they stay above it whether the SMA is measured on settled bars through the
09-16 close or recomputed with today's live price as the 20th bar:

| Name | Live | vs 20-SMA (live bar) | 10d return | Day |
|---|---:|---:|---:|---:|
| **SMH** | $560.80 | **+0.63%** | **+1.87%** | +2.79% |
| **QQQ** | $717.165 | **+0.62%** | +1.12% | +1.77% |
| **XLE** | $64.42 | **+0.54%** | −1.04% | +0.61% |
| TLT | $81.755 | −0.31% | −0.24% | +1.08% |
| SPY | $762.96 | −0.18% | −0.29% | +1.18% |
| GLD | $398.38 | −2.20% | −1.09% | +1.70% |
| IWM | $285.78 | −2.53% | −2.80% | +0.66% |
| XLF | $55.895 | −2.67% | −3.06% | −0.06% |

**XLE is back over the exact line it failed by $0.0045 this morning** — $64.42 against a
$64.0345 settled 20-SMA, +$0.3855 above it — but it is now **rank 3** on 10-day return, behind
SMH and QQQ, so the name that has held slot 1 for seven of the last eight sessions would not
retake it even on a reversal. If this holds into the close, tomorrow's re-rank has **SMH slot 1,
QQQ slot 2** and breadth goes 0 → 3. **That is tomorrow's 9:30 decision and it was deliberately
not anticipated here**: scoring is done on settled bars at 9:30, seven of eight names are green
today, and an intraday reading is not a signal. The $356.32 of settled cash plus Friday's
$310.17 is what would fund it.

One thing not to read into the above: a re-armed sleeve is a separate question from a re-armed
equity book. If SMH takes slot 1, a conforming 45–90 DTE call on it runs roughly **$3,900**
against a **$333** premium cap (50% of $666.49 under [[Risk Rules v2]] §4) — about 12×
unaffordable, as it was on 09-09. The sleeve would stay dormant on ticket price regardless of
what the signal says. **Noted as arithmetic, not as a recommendation, and not a decision this
check may make.**

**Still open and still undecided** (no entry exists in [[Decisions]] for either, so no
authority exists and neither was acted on): the **§4 premium cap left at 50%** by
[[Decisions]] #1 and explicitly not reviewed there, and the **rank-boundary hysteresis band**
first raised 2026-09-04. Both remain recommendations awaiting the owner.
