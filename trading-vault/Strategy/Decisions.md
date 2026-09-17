---
tags: [strategy, decisions, authority]
status: active
started: 2026-09-17
---

# Owner Decision Register

**This file is the only source of owner decisions.** Append-only. An entry belongs here only if
the account owner actually said it. If it is not in this register, it is not an owner decision —
it is a recommendation, and a recommendation may never be cited as authority, no matter how many
times it has been repeated or how confident the note that repeats it sounds.

## Why this file exists

Between 2026-08-25 and 2026-09-17 the run notes asked for at least eight owner decisions and
received none. In the gap, one of the agent's own recommendations was promoted into an authority:
[[2026-08-25 Daily Signals]] ends *"No action taken — flagging for the owner,"* having listed three
options for the sleeve. Later notes cite that same analysis as *"owner decision 2026-08-25 — wait
for a bigger account, do not relax the delta/DTE spec"* and, by 2026-08-31, as *"an explicit
2026-08-25 owner instruction."* The owner never said it. The sleeve kept trading on it and lost
three times for a combined −$218.16.

**Rule: an unanswered recommendation is not a decision, and silence is not consent.**

---

## 2026-09-17 — #2 · The $258.48 of 2026-08-28 was an owner deposit

**Owner:** *"the 258 was a deposit"* — in session, 2026-09-17.

Open since 2026-08-31 (flagged every cycle for 20 days). Resolves the account's contributed-capital
figure and therefore the circuit-breaker level.

| | Before | After |
|---|---:|---:|
| Contributed capital | $650.54 | **$909.02** |
| Circuit-breaker (§7, 50%) | $325.00 | **$454.51** |
| Account value $666.49 is | 2.05× breaker | **1.47× breaker** |
| Headroom to breaker | $341.49 | **$211.98** |
| Performance vs contributed | +2.45% | **−26.7%** |

**Applied to:** [[Risk Rules v2]] §7; [[00 - Home]] current-state table. The account has **not**
tripped the new breaker — $666.49 is above $454.51 — but the true margin is a third smaller than
every note since 08-28 has stated.

---

## 2026-09-17 — #1 · Fix the options sleeve: decouple it from equity rank

**Owner:** *"fix the sleev"* — in session, 2026-09-17, answering the decision open since 2026-09-04
(*"lengthen what holds the sleeve open, shorten the contract, or retire the sleeve"*), restated
2026-09-10 and 2026-09-17. **Fix, not retire.**

### The evidence this decision rests on

| # | Contract | Held | Realized | Killed by |
|---|---|---|---:|---|
| 1 | XLE Oct $59C | 07-31 → 08-04 | −$63.08 | rank (XLF took slot 1) |
| 2 | XLE Nov $65C | 09-02 → 09-04 | −$66.04 | rank (XLF took slot 1) |
| 3 | XLE Nov $66C | 09-10 → 09-17 | −$89.04 | rank (slot 1 emptied) |

**−$218.16 total — 90% of all realized loss in the account, on 3 of 16 closed positions.** All
three were closed by *losing a relative rank*. **None** was closed by its own risk tests; #3 was
killed while passing both (64 DTE, XLE 20-day return +0.55%). A 45–90 DTE contract was being
held for 2–7 days against a signal that reranks daily — the structural mismatch named on 09-04.

### The change

**The sleeve no longer reads equity rank at all.** It opens on the slot-1 underlying, and from
that moment it is an independent position judged only on its own two tests:

- close if the underlying's 20-day return turns **negative**, or
- close if the contract falls below **21 DTE**.

The clause *"close if its underlying lost slot 1"* is **deleted**. This also resolves the
textual ambiguity recorded in [[2026-09-17 0930 Cycle — Coupled Unwind, Book to 100% Cash]]
(readings (a) "no longer holds slot 1" vs (b) "another name took slot 1"): the sleeve reads
neither, so no interpretation is needed and no forcing case exists.

### What the owner is accepting

1. **Orphaned calls are now legal and expected.** The sleeve may hold a call on a name the equity
   book has sold and disqualified. This was previously argued against on two grounds, both of
   which this decision overrides: v3 §9's definition of the sleeve as *"calls on the slot-1
   asset"* (§9 is rewritten below), and [[Risk Rules v2]] §2's concentration rule (§2 gains an
   explicit sleeve carve-out).
2. **Losses will be carried longer.** The rank rule was cutting these positions early. Cutting
   early is why each loss was bounded; holding to the real tests means a losing call can go
   further against the account before either test fires.
3. **The premium cap is now the binding risk control.** With rank gone, [[Risk Rules v2]] §4's
   *"≤50% of account value in premium at risk"* is the only thing bounding sleeve size. Max loss
   on a long call is the full premium, so §4 as written permits risking half the account on one
   contract. **Left at 50% by this decision — not reviewed.** Flagged for the owner as the next
   question worth answering.

**Applied to:** [[Staggered Daily Swing Rotation v3]] §9 and the §8 breaker reference;
[[Risk Rules v2]] §2, §4; `automation/daily-cycle-prompt.md` step 3.
