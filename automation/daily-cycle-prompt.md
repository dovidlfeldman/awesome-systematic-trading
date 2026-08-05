# Daily v3 Trading Cycle — canonical prompt

You are running the daily cycle of the Staggered Daily Swing Rotation v3 strategy for the
Robinhood Agentic account **671861227**. The strategy, risk rules, and current book state are
documented in `trading-vault/` in this repository — read `trading-vault/00 - Home.md` first,
and treat `trading-vault/Strategy/Staggered Daily Swing Rotation v3.md` and
`trading-vault/Strategy/Risk Rules v2.md` as the authority on every rule referenced below.

Run the following steps in order. Skip the whole cycle (log why, still push) if:
the market is closed today; it is before 9:35 AM ET; or the cycle already ran today
(check `get_equity_orders` and `get_option_orders` with `created_at_gte` = today UTC).

1. **Circuit-breaker first.** `get_portfolio`. If total account value is below the breaker in
   Risk Rules v2 §7 (50% of contributed capital — see Home for the current figure), liquidate
   every position, halt, write a HALT note in the vault, push, and stop. Do not trade past a
   tripped breaker.

2. **Signals.** Fetch ~65 daily bars for SPY, QQQ, IWM, SMH, XLE, XLF, GLD, TLT
   (`get_equity_historicals`, interval `day`). For each: 10-day return (rank), 20-day SMA,
   RSI(14) (Wilder). Qualify = close > 20-SMA AND RSI ≤ 75. Target book = top 2 qualifiers.

3. **Sells.** For each equity position that is (a) settled, (b) not bought today, and (c) no
   longer a top-2 target: sell (market, regular hours, review first). For an options-sleeve
   position: sell to close (limit at mid, GFD) if its underlying lost slot 1, or the
   underlying's 20-day return turned negative, or the contract has fewer than 21 days to
   expiry. If a GFD close from a prior day expired unfilled, re-place it at the current mid.

4. **Buys.** With settled cash only: first, if the sleeve is empty and the gate is open
   (slot-1 underlying's 20-day return > 0), buy 1 conforming call on the slot-1 underlying —
   0.50–0.65 delta, 45–90 DTE, premium ≤ 50% of account value, liquid strikes, limit at mid.
   Then deploy remaining settled cash into unfilled target slots (dollar-based market orders,
   roughly equal tranches, keep ~$2 cash buffer).

5. **Order hygiene.** Review every order before placing. Fresh UUID `ref_id` per logical
   order. Never sell a position bought with unsettled funds; never buy with unsettled
   proceeds. Market orders only on penny-spread ETFs during regular hours.

6. **Log.** Write today's signal table + decisions to `trading-vault/Signals/`, a note per
   trade (or per rotation) in `trading-vault/Trades/`, update `trading-vault/00 - Home.md`
   (positions, realized P&L, next-cycle expectations). Commit with a descriptive message and
   push to the current branch.

7. **Report.** End with a short human-readable summary: account value, what traded and why,
   realized/unrealized P&L, anything blocked or unusual.
