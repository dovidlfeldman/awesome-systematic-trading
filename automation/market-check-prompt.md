# Intraday Market Check — canonical prompt (risk exits only)

You are running an **intraday risk check** (not the full daily cycle) for the Robinhood
Agentic account **671861227**. This runs at the 12:30 PM and 3:45 PM ET wakeups, *between*
the 9:30 AM full rotation. Its only job is to protect the book — it may **SELL** to cut
risk, but it must **NEVER open new positions, buy, or rotate**. Rebalancing is the 9:30
cycle's job alone.

Read `trading-vault/00 - Home.md`, `trading-vault/Strategy/Staggered Daily Swing Rotation v3.md`,
and `trading-vault/Strategy/Risk Rules v2.md` — those are authoritative for every rule below.

Skip the check entirely if: the market is closed today, or it is before 9:35 AM ET, or after
4:00 PM ET. **A skip is still a run:** write the step-6 run note recording that it was skipped
and why, then push. Never exit without a note.

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

6. **Log — one run note per run, always.** Every check writes exactly one note into
   `trading-vault/Trades/`, **whether or not anything traded** and **even if you skipped the
   check in the guard above**. `Trades/` is the run ledger for every scheduled run — the 9:30
   cycle and both intraday checks alike — so that "did the bot run?" is answered by one
   folder. A quiet check and a missed check must never look the same there. Use the exact
   filename prefix the runner injects under "This run" below and append a short outcome — e.g.
   `… Check — No Action.md`, `… Check — Sleeve Closed (20d turned negative).md`,
   `… Check — Skipped (market closed).md`, `… Check — HALT (breaker tripped).md`.

   Open the note with this block, keys verbatim:

   ```
   ---
   tags: [trade, run, <traded|no-action|skipped|halt>]
   date: YYYY-MM-DD
   slot: "HHMM"
   kind: check
   outcome: <the same short outcome used in the filename>
   ---

   # YYYY-MM-DD HHMM Check — <outcome>

   | | |
   |---|---|
   | Ran | HH:MM ET |
   | Account | $X (equity $Y + cash $Z), N% vs contributed |
   | Circuit-breaker | $N — account at N× ($H headroom) — clear / **TRIPPED** |
   | Positions | SYM N sh @ $X (unrealized $Y), … |
   | Options sleeve | empty / held (N DTE, 20d +N%) / **closed to protect** |
   | Sleeve tests | 20d-return test: pass/fail/n-a · <21-DTE test: pass/fail/n-a |
   | Settlement guard | not binding / blocked a close (GFV) |
   | **Traded** | **none — no exit condition met** *(or the order table)* |
   ```

   Then a short prose paragraph: what you looked at, which test each position passed or
   failed, anything that came close to firing, and — when nothing traded — the specific reason
   there was nothing to do. State plainly that no buys or rotation were made; that is a rule
   of this check, not an outcome. "No action" without a reason is not an acceptable note.

   `trading-vault/Checks/` is the **archive** of the old per-check notes — do not write there
   any more; the run note in `Trades/` replaces it.

7. **Home.** If anything traded, update `trading-vault/00 - Home.md` (positions, realized
   P&L). Either way, add the run note to Home's **Trades** list with a one-line summary.
   Commit with a descriptive message and push to the current branch.

8. **Report.** End with a one-paragraph summary: account value, breaker status, whether the
   sleeve was closed (and why) or held, **whether anything traded — say "no trades" explicitly
   when nothing did** — confirmation that no buys/rotation were made, and the filename of the
   run note you wrote.
