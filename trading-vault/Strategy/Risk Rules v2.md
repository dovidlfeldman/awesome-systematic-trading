---
tags: [strategy, risk]
supersedes: "[[Risk Rules]]"
---

# Risk Rules v2 (aggressive mandate)

Rewritten 2026-07-29 at the owner's direction ("much more aggressive trading, options also"). The v1 rules banning leverage and capping concentration are lifted **by owner decision**; what remains are the rules that keep aggressive trading survivable rather than the rules that made it tame.

1. **Instruments:** long US-listed ETFs (including 3x leveraged), large-cap equities, and — once approved — long single-leg options on liquid chains. Still banned: illiquid names, and anything the strategy documents don't cover.
2. **Concentration:** up to 100% of the account in a single position **only when** the position is the top-ranked asset under the active strategy's rules. Concentration must come from the system, not from conviction. **Sleeve carve-out (2026-09-17, [[Decisions]] #1):** an options-sleeve position is exempt from the top-ranked requirement once opened. It is opened on the slot-1 underlying, but may be held after that underlying loses rank or leaves the book entirely. Its risk is bounded by §4 instead — max loss on a long call is the premium paid, which is known at entry.
3. **Leverage gate:** 3x ETFs only with positive 4-week underlying trend ([[Aggressive Leveraged Momentum v2]] §3). Never leverage through the absolute-momentum gate.
4. **Options sleeve cap:** ≤50% of account value in premium at risk; long-only (defined max loss); 45–90 DTE; limit orders only. **Since 2026-09-17 this is the sleeve's binding risk control** — with equity rank no longer forcing exits ([[Decisions]] #1), nothing else bounds sleeve size, and 50% means one contract may risk half the account. Left at 50% by that decision; **flagged as the next open question for the owner, not yet answered.**
5. **Order hygiene (unchanged):** review before place; market orders only on penny-spread instruments in regular hours.
6. **Cash-account discipline (unchanged):** settled funds only for sizing; no same-day sale of positions bought with unsettled funds.
7. **Circuit-breaker (revised):** if account value closes below **50% of contributed capital**, liquidate everything, halt, and require an explicit owner conversation before any new trade. The owner chose high risk; the breaker exists so one bad regime doesn't take the account to zero on autopilot. *(Contributed capital: $400 initial + $250 deposit 2026-07-31 + **$258.48 deposit 2026-08-28** = **$909.02 → breaker at $454.51**. The 08-28 deposit was confirmed by the owner on 2026-09-17, [[Decisions]] #2, after 20 days unconfirmed; every note between 08-28 and 09-17 understated the breaker as $325 and overstated performance by treating the deposit as profit.)*
8. **Documentation (unchanged):** every order — filled, blocked, or scheduled — gets a vault note with its reasoning before or immediately after placement.

## What the owner accepted by choosing this mandate

−50% outcomes are inside the normal range for this book (concentrated sector, 3x wrappers, long options). Weekly swings of ±10–25% of the account will be routine once leverage or options engage. The system's job is to keep the risk *chosen* rather than accidental — it cannot make it small.
