# Intraday Market Check — canonical prompt (risk exits only)

You are running an **intraday risk check** (not the full daily cycle) for the Robinhood
Agentic account **671861227**. This runs at the 12:30 PM and 3:45 PM ET wakeups, *between*
the 9:30 AM full rotation. Its only job is to protect the book — it may **SELL** to cut
risk, but it must **NEVER open new positions, buy, or rotate**. Rebalancing is the 9:30
cycle's job alone.

Read `trading-vault/00 - Home.md`, `trading-vault/Strategy/Staggered Daily Swing Rotation v3.md`,
and `trading-vault/Strategy/Risk Rules v2.md` — those are authoritative for every rule below.

Skip the check entirely (log why in one line, still push) if: the market is closed today, or
it is before 9:35 AM ET, or after 4:00 PM ET.

Run in order:

1. **Circuit-breaker first (Risk Rules v2 §7).** `get_portfolio`. If total account value is
   below the breaker (50% of contributed capital — current figure in Home, presently $325),
   this is an emergency: liquidate **every** position (market, regular hours; sell-to-close
   options at mid), write a HALT note in `trading-vault/Trades/`, commit, push, and stop. The
   breaker overrides the settlement guard below.

2. **Options-sleeve protective close.** Only if the sleeve holds a position:
   fetch ~65 daily bars for its underlying (`get_equity_historicals`, interval `day`) and
   compute the 20-day return. **Sell to close** (limit at mid, GFD, review first) if *either*:
   - the underlying's 20-day return has turned **negative**, or
   - the contract now has **fewer than 21 days to expiry**.
   If a GFD close from earlier today expired unfilled and the condition still holds, re-place
   it at the current mid. Do nothing to the sleeve otherwise.

3. **Equities: no action.** Equity rotation (dropping a name that left the top-2) is a
   once-daily decision made at 9:30 — do **not** make it here. The only thing that sells an
   equity intraday is the §1 breaker. Do not place equity buys or sells for any other reason.

4. **Settlement guard (Risk Rules v2 §6).** Never sell a position bought with unsettled funds
   (good-faith violation) — the sole exception is a tripped §1 breaker. If a protective close
   would violate settlement, log that it was skipped for GFV and leave the position.

5. **Order hygiene.** Review every order before placing. Fresh UUID `ref_id` per order.
   Limit orders (mid, GFD) for options; market orders only on penny-spread ETFs in regular
   hours, and here only under a §1 liquidation.

6. **Log.** Write a short check note to `trading-vault/Checks/` (create the folder if needed):
   timestamp, account value, breaker status, sleeve status and whether it was closed and why,
   and "no action" if nothing traded. If anything traded, also add a per-trade note in
   `trading-vault/Trades/` and update `trading-vault/00 - Home.md`. Commit with a descriptive
   message and push to the current branch.

7. **Report.** End with a one-paragraph summary: account value, breaker status, whether the
   sleeve was closed (and why) or held, and confirmation that no buys/rotation were made.
