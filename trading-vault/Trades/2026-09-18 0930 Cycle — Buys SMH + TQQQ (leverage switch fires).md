---
tags: [trade, run, traded]
date: 2026-09-18
slot: "0930"
kind: cycle
outcome: Buys SMH + TQQQ (leverage switch fires)
---

# 2026-09-18 0930 Cycle — Buys SMH + TQQQ (leverage switch fires)

| | |
|---|---|
| Ran | 9:30–9:36 ET (orders placed 9:35:05 / 9:35:09, after the 9:35 gate) |
| Account | **$666.41** (equity $664.40 + cash $2.01), **−26.7%** vs $909.02 contributed |
| Circuit-breaker | **$454.51** — account at **1.47×** ($211.90 headroom) — **clear** |
| Signals | rank 1 **SMH** (+1.84% 10d, RSI 49.9), rank 2 **QQQ** (+1.08% 10d, RSI 52.8); also qualifying: XLE (rank 5) |
| Target book | slot 1 **SMH**, slot 2 **QQQ → bought as TQQQ** (leverage switch ON) |
| Held | nothing at open — the book was 100% cash from yesterday's coupled unwind |
| **Traded** | **2 orders, 2 fills — SMH 0.588900 sh @ $564.1699 and TQQQ 4.623601 sh @ $71.8574, $332.24 each** |
| Options sleeve | **empty — entry gate shut on its own arithmetic** (slot-1 SMH 20-day return **−0.06%**, §9 needs positive) |
| Realized / unrealized P&L | **−$242.52 (unchanged — nothing sold today) / −$0.08** |
| Blocked | **nothing in trading — both orders filled.** Ops only: **`git push` failed on DNS** (`Could not resolve host: github.com`, 3 attempts incl. outside the sandbox) and the **vault mirror was refused by the permission layer**. Commit `8c9a8af` is on disk and local-only |

## What happened

The account came into the session **100% cash** — the state yesterday's coupled unwind left it in
after the first 0-of-8 reading in v3 history. **That reading lasted exactly one session.** Three
names qualify today, the top two are SMH and QQQ, and both tranches went to work. The account is
back to **99.7% deployed** with $2.01 of buffer.

Two things make this cycle unusual, and only one of them is the trade itself.

### 1. The leverage switch fired for the first time in 21 cycles

[[Staggered Daily Swing Rotation v3]]'s leverage note and [[Risk Rules v2]] §3 buy the **3x wrapper**
of a slot's target when the underlying's **trailing 4-week return is positive**. It has been checked
every cycle since 2026-07-29 and has never once been ON. Today it is — for slot 2:

| Slot | Target | 4-week trend (20 trading days) | 4-week trend (28 calendar days) | Switch | Bought |
|---|---|---:|---:|:--|---|
| 1 | SMH | **−0.06%** (560.61 vs 560.92 on 08-19) | −0.36% | **OFF** | **SMH 1x** |
| 2 | QQQ | **+0.12%** (716.92 vs 716.08 on 08-19) | +0.84% | **ON** | **TQQQ** |

**Both definitions of "4 weeks" agree in sign for both names**, which is the only reason this was
executed without hesitation. The 20-trading-day margin on QQQ is **12 basis points** — squarely
inside what this vault has called calendar noise on at least four prior occasions (09-09: *"the
sleeve/leverage gate margin is calendar noise"*). Had the two measures disagreed, the honest answer
would have been that the rule does not specify which one it means. They do not disagree, so the rule
is unambiguous today and was followed.

It was followed **because it is written**, not because this run thinks 12 bp of trend justifies 3x
leverage. The rule has no tie band and no hysteresis, and the two prior attempts to argue for one
were each refuted by their own first live test (09-14 by $17.28, 09-15 by $17.56 — the same gap
re-measured, not two independent data points). Substituting this run's judgment for the written rule
on a 12-bp reading is exactly the failure mode [[Decisions]] exists to prevent.

**What it means in risk terms, stated plainly:** roughly half the account now carries **3x daily
Nasdaq exposure**, so the book's effective beta is about **2x** rather than 1x. A −5% QQQ session
takes roughly **−$50** off the account, about a quarter of the $211.90 of breaker headroom. That is
inside the mandate — [[Risk Rules v2]] §1 permits 3x explicitly, §3 gates it on exactly this test,
and the mandate's own honest-expectations section says *"daily swings of ±5–10% of the whole account
are routine"* once leverage engages. It is nonetheless the largest single step-up in risk the account
has taken, and it arrived on a 12-basis-point signal. Recorded here so it is not a surprise.

**SMH's switch stayed off by 31 bp**, so slot 1 is plain SMH and not SOXL. Worth noting the history:
the leverage gate refused SOXL on 09-14 when SMH's 20d was −3.50%, and **SOXL opened −16.9% against
SMH's −5.05% that session** — the gate has already paid for itself once by staying shut.

### 2. The options sleeve was blocked at its own gate, not by rank

This is the **first cycle since [[Decisions]] #1** in which the sleeve's rules could actually be
exercised, and the outcome is clean: **slot 1 is SMH, SMH's 20-day return is −0.06%, and §9 opens
the sleeve only on a positive slot-1 20-day return.** Gate shut. No call bought.

No rank reasoning entered this decision anywhere, which is the point of the decision. For the record,
affordability would have blocked it regardless — **priced live rather than assumed**, per the 09-02
lesson:

| | |
|---|---|
| Only conforming expiry | **2026-11-20** (63 DTE) — Oct 30 is 42 DTE, Dec 18 is 91 DTE, both outside |
| Nearest conforming strike | **$565C**, 0.544Δ, OI 773 |
| Mark | **$33.725** → **$3,372.50** per contract |
| §4 cap (50% of account) | **$333.25** |
| Ratio | **10.1× the cap** |

The chain again offered **exactly one expiration inside the 45–90 DTE window** — the same cliff that
made the 09-02 entry cost 52% more than planned. On this account the sleeve remains reachable only
when slot 1 is a cheap name.

## Orders

| # | Symbol | Side | Type | Size | Placed | Filled | Fill price | Shares | `ref_id` | Order id |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | **SMH** | buy | market, GFD, regular hours | $332.24 | 9:35:05.48 | **9:35:05.67** (0.19 s) | **$564.1699** | 0.588900 | `759f589a-53f3-4092-830d-edeea61da4be` | `6aad3e09-d73a-4ff5-bfa9-4addf2b29e8a` |
| 2 | **TQQQ** | buy | market, GFD, regular hours | $332.24 | 9:35:09.80 | **9:35:09.93** (0.13 s) | **$71.8574** | 4.623601 | `dc6338d3-81ef-43dd-ad1f-a4f22501e8dc` | `6aad3e0d-18e2-458c-91ed-c106ef18e0ef` |

Both reviewed before placing; **both reviews returned `order_checks: {}`** — no buying-power, halt or
PDT alerts on either leg. Review quotes verbatim:

> SMH — `Bid $564.13 × 80 P · Ask $564.41 × 80 V · Last $564.1301 × 300 D. Updated 9:33 AM ET.`

> TQQQ — `Bid $71.89 × 400 Q · Ask $71.90 × 2600 Q · Last $71.8999 × 300 D. Updated 9:33 AM ET.`

TQQQ filled at **$71.8574, two-tenths of a cent inside the $71.89 bid** quoted at review — a
price-improved fill, not a spread cost. SMH filled at $564.1699 against a $564.41 ask, also inside
the quote. **Total slippage across both legs: −$0.08**, which is the entire difference between the
$666.49 that came in and the $666.41 now marked.

TQQQ's depth is worth recording since it is a new instrument for this book: **400 × 2,600 on a
one-cent spread**. It is one of the most liquid ETFs in the US market, so [[Risk Rules v2]] §5's
"market orders only on penny-spread instruments" is satisfied with room to spare — the 3x wrapper
adds leverage risk, not liquidity risk.

## Resulting position

| Slot | Symbol | Shares | Cost | Avg price | Value @ 9:36 |
|---|---|---:|---:|---:|---:|
| 1 | SMH | 0.588900 | $332.24 | $564.1699 | ~$332.20 |
| 2 | TQQQ (3x QQQ) | 4.623601 | $332.24 | $71.8574 | ~$332.20 |
| — | Cash | — | $2.01 | — | $2.01 |
| | **Total** | | **$666.49** | | **$666.41** |

Tranches are **within one cent of each other** — $332.24 vs $332.24 — so both slots are funded at
their designed size. This is the cleanest tranche balance the book has ever had; the prior best was
$0.80 apart on 09-08.

## Hygiene

- **Circuit-breaker checked first**, before any order: $666.49 against $454.51 = **1.47×**, clear.
- **9:35 gate held.** The agent woke at 9:30:19 and filled the wait with read-only work (signals,
  chain pricing, reviews), placing at **9:35:05** — the 08-28 early-exit bug did not recur.
- **Fresh UUID `ref_id` per logical order**; no retries, no duplicates.
- **No settlement risk.** `unsettled_funds` read **$0.00** — yesterday's $310.17 of unwind proceeds
  settled overnight exactly as scheduled, so all $666.49 was genuinely settled and
  [[Risk Rules v2]] §6 was satisfied on the broker's own number, not an assumption. **Verified rather
  than inferred**, per the 09-07/09-08 calendar errors.
- **Nothing was sold**, so §7's no-same-day-sale-of-unsettled-purchases rule is not in play. Both
  positions show `intraday_quantity` equal to full quantity — **neither is sellable today without a
  good-faith violation**, and the next cycle must treat them as such if a rotation is owed.
- Verified no orders existed on the day before placing (guard against a double run): `get_equity_orders`
  and `get_option_orders` both returned empty for 2026-09-18 UTC.

## Ops — publishing failed, for a new reason

**Trading is complete and correct; only publication is blocked.** Recorded plainly so a stale remote
is not mistaken for a stale book.

- **`git add` and `git commit` both succeeded** — commit `8c9a8af`, 3 files. **The sixteen-day-old
  git *permission* defect did not recur this run**, which is new information and worth keeping: the
  permission layer refused every git verb on 09-16 and allowed all of them today.
- **`git push` failed three times on DNS** — `fatal: unable to access ... Could not resolve host:
  github.com` — including one attempt run outside the sandbox. This is **not** the old permission
  defect; it is **no network egress in this run's environment**, a distinct failure mode with the
  same symptom (stale remote). Distinguishing the two matters: the permission defect needs an
  allowlist change, this needs network.
- **`automation/mirror-trades.sh` was refused by the permission layer**, so the Obsidian mirror at
  `~/TradingVaultMirror/` is **not** updated by this run. The launchd runner normally invokes it as a
  post-step; if it does, the mirror self-heals. If it does not, the mirror is a session behind.
- **Net effect: the vault is correct on disk and in local git, and stale on the remote and in the
  mirror.** The next run that has network should push `8c9a8af`. Nothing about the book, the orders
  or the P&L depends on this.

## What would change tomorrow

- **SMH's 4-week trend is 31 bp from positive.** If it crosses, slot 1's wrapper becomes **SOXL** and
  the sleeve's entry gate opens — though the sleeve stays arithmetically impossible at 10.1× the cap,
  so the SOXL swap is the only real consequence. The base rolls off 08-19 tomorrow, so the calendar
  alone can do it.
- **QQQ's switch is 12 bp from shutting**, which raises a rule conflict flagged below.
- **Neither position can be sold tomorrow without settlement risk** — both were bought today with
  settled cash, so they settle T+1 on **Mon 2026-09-21**. Selling either on 09-21 is fine; selling
  today or in a hypothetical Saturday session is not. (Checked against the calendar this time: today
  is **Friday**, so T+1 is **Monday 09-21**, not Saturday.)
- XLE is the name to watch: best 20-day return in the universe (+1.42%) and the widest trend cushion,
  held out of the book only by a −0.95% 10-day return.

## Open question this cycle raises — **no owner decision exists**

**When a slot's target is unchanged but its leverage switch flips, does §5 force a swap?**

§5 sells only when a holding *"is no longer its target slot."* If QQQ's 4-week trend turns negative
tomorrow, slot 2's target is **still QQQ** — so §5 says hold TQQQ, while §3 says a 3x wrapper
requires a positive trend. **The two rules disagree and nothing written resolves it.** The reverse
case is equally unspecified: if SMH's trend turns positive, does a held 1x SMH become SOXL mid-hold,
or only at a fresh buy? (Precedent leans "only at a fresh buy" — on 09-09 the switch opened and was
**deliberately not taken** because no slot-1 buy was due — but that was one run's reading, recorded
as such, and it is **not** an owner decision.)

Today's buy does not depend on the answer. **Tomorrow's hold might**, and this is now live money
rather than a hypothetical.

**This is a question and a recommendation, not a decision.** Per the standing rule in [[Decisions]],
no later run may cite this paragraph — or any restatement of it — as authority. If it matters, it
has to be answered in that register. Until then the written rules stand as written, and §5's plain
text (hold while the slot target is unchanged) is what the next cycle will follow, with the conflict
noted each time it binds.

Also still open and still unanswered, listed so silence stays visible: **the §4 premium cap is still
50% of account value** ([[Decisions]] #1 explicitly left it unreviewed and flagged it as the next
question), and the **T+1/§6 settled-funds conservatism** has been open since 09-01.
