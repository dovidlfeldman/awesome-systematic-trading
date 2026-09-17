---
tags: [strategy, active]
status: active
adopted: 2026-07-29
supersedes: "[[Aggressive Leveraged Momentum v2]]"
---

# Staggered Daily Swing Rotation v3

Adopted 2026-07-29 (~30 minutes after v2) on the owner's escalation: **"I'm ok with constant swing day trading."** Daily-cadence swing trading, engineered around the one constraint that cannot be traded away: **cash-account T+1 settlement**. Robinhood grants this account buying power from settled cash only — a dollar that trades on day N cannot trade again until day N+2. Same-day round-trips at full size are structurally impossible; anything claiming otherwise would just generate good-faith violations and a frozen account.

## The tranche stagger (how "constant" is achieved)

Capital is split into two ~equal tranches, **A** and **B**, offset by one trading day:

| Day | Tranche A | Tranche B |
|---|---|---|
| N | **buys** (settled cash) | holds / sells at morning check |
| N+1 | holds / sells at morning check | **buys** (cash settled overnight) |

Effect: **the account trades every single trading day**, each position is a 1–2 day swing, and no order ever touches unsettled funds. Bootstrap (2026-07-30): all cash is settled; A buys, B deliberately waits one day to create the offset.

## Daily cycle (runs at the 9:35 AM ET wakeup)

1. **Data:** daily bars for the universe — SPY, QQQ, IWM, SMH, XLE, XLF, GLD, TLT.
2. **Rank** by trailing 10-day return.
3. **Filters:** a candidate qualifies only if close > 20-day SMA (uptrend) and RSI(14) ≤ 75 (not a blow-off chase). 
4. **Target book:** slot 1 = highest-ranked qualifier, slot 2 = second qualifier. Fewer than 2 qualifiers → the unfilled slot's tranche sits in cash that day (cash is a position).
5. **Selling tranche:** sells at the morning check **only if** its holding is no longer its target slot. Still the target → hold, no churn, no settlement clock burned.
6. **Buying tranche:** deploys full settled cash into its target slot (dollar-based market order on these penny-spread ETFs; review before place, always).
7. **Never** sell a position bought with unsettled funds (GFV). Never buy with unsettled proceeds.
8. **Circuit-breaker** check first, trade second ([[Risk Rules v2]] §7: close below **50% of contributed capital** → liquidate, halt, owner conversation). *(The old "$200" figure here was stale from v1; §7 has been a formula since 2026-07-31. Corrected 2026-09-17 — current level **$454.51** on $909.02 contributed.)*
9. **Options sleeve — opens on the signal, exits on its own tests** (revised 2026-09-17, [[Decisions]] #1):
   - **Open:** only when the sleeve is empty and the slot-1 underlying's 20-day return is positive. Buy one conforming long call on that underlying — 0.50–0.65 delta, 45–90 DTE, liquid strike, limit at mid, premium within [[Risk Rules v2]] §4.
   - **Close:** on **either** of its own two tests — the underlying's 20-day return turns **negative**, or the contract falls below **21 DTE**. Limit at mid, GFD; re-place an unfilled GFD close at the new mid.
   - **The sleeve does not read equity rank.** Once open it is an independent position. It is **not** closed because its underlying left slot 1, lost rank, failed §3, or was sold from the equity book. An **orphaned call — one whose underlying the equity book no longer holds — is legal and expected**, and is exempted from [[Risk Rules v2]] §2 concentration by §2's sleeve carve-out.
   - **Why:** the sleeve went 0-for-3 for −$218.16 (90% of all realized loss) and every one of the three was killed by losing a relative rank while its own risk tests still passed. A 45–90 DTE contract cannot be held against a signal that reranks daily.
10. **Log** the cycle in the vault (signal table + orders + P&L), push, and **re-arm tomorrow's wakeup** via send_later (trigger-management API is approval-gated; chained one-shots achieve the same daily cadence).

## Leverage note

The v2 leverage switch (3x wrapper on positive 4-week trend) still applies to slot selection: if a slot's target is SMH and semis' 4-week trend is positive, the slot buys SOXL instead. Same for QQQ→TQQQ, SPY→UPRO, IWM→TNA. GLD/TLT/XLE/XLF trade 1x only.

## What daily cadence costs (recorded ex-ante, honestly)

- **More trades ≠ more edge.** The 10-day/20-SMA signal has weak-positive historical support; its daily-cadence advantage over v2's weekly checks is faster exits, not higher expected return. The realistic base case is that v3 performs *similar to v2 with more noise and more spread cost*.
- Spread cost ~1–3 bp per side on this universe ≈ $0.05–0.15 per $200 trade — tolerable, which is the only reason daily cadence is defensible at all here.
- Halved position size per pick (two $200 tranches) means single-name conviction is diluted; that is the price of trading daily inside T+1.
- Tax: everything is short-term. Accepted by mandate.

## Change log

- 2026-07-29 — Adopted. Bootstrap scheduled for 2026-07-30: tranche A deploys per that morning's signal; B waits one day.
- **2026-09-17 — §9 rewritten: the options sleeve is decoupled from equity rank.** Owner decision ([[Decisions]] #1) after the sleeve went 0-for-3 for −$218.16, all three closed on rank rather than on their own risk tests. The clause *"close if its underlying lost slot 1"* is deleted; the sleeve now exits only on its own 20-day-trend and 21-DTE tests, and may be orphaned. §8's stale "$200" breaker reference corrected to the §7 formula at the same time. **First change to this document since adoption, 50 days.**
