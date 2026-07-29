---
tags: [strategy, risk]
supersedes: "[[Risk Rules]]"
---

# Risk Rules v2 (aggressive mandate)

Rewritten 2026-07-29 at the owner's direction ("much more aggressive trading, options also"). The v1 rules banning leverage and capping concentration are lifted **by owner decision**; what remains are the rules that keep aggressive trading survivable rather than the rules that made it tame.

1. **Instruments:** long US-listed ETFs (including 3x leveraged), large-cap equities, and — once approved — long single-leg options on liquid chains. Still banned: illiquid names, and anything the strategy documents don't cover.
2. **Concentration:** up to 100% of the account in a single position **only when** the position is the top-ranked asset under the active strategy's rules. Concentration must come from the system, not from conviction.
3. **Leverage gate:** 3x ETFs only with positive 4-week underlying trend ([[Aggressive Leveraged Momentum v2]] §3). Never leverage through the absolute-momentum gate.
4. **Options sleeve cap:** ≤50% of account value in premium at risk; long-only (defined max loss); 45–90 DTE; limit orders only.
5. **Order hygiene (unchanged):** review before place; market orders only on penny-spread instruments in regular hours.
6. **Cash-account discipline (unchanged):** settled funds only for sizing; no same-day sale of positions bought with unsettled funds.
7. **Circuit-breaker (revised):** if account value closes below **$200** (−50% from the $400 start), liquidate everything, halt, and require an explicit owner conversation before any new trade. The owner chose high risk; the breaker exists so one bad regime doesn't take the account to zero on autopilot.
8. **Documentation (unchanged):** every order — filled, blocked, or scheduled — gets a vault note with its reasoning before or immediately after placement.

## What the owner accepted by choosing this mandate

−50% outcomes are inside the normal range for this book (concentrated sector, 3x wrappers, long options). Weekly swings of ±10–25% of the account will be routine once leverage or options engage. The system's job is to keep the risk *chosen* rather than accidental — it cannot make it small.
