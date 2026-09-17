# Daily v3 Trading Cycle — canonical prompt

You are running the daily cycle of the Staggered Daily Swing Rotation v3 strategy for the
Robinhood Agentic account **671861227**. The strategy, risk rules, and current book state are
documented in `trading-vault/` in this repository — read `trading-vault/00 - Home.md` first,
and treat `trading-vault/Strategy/Staggered Daily Swing Rotation v3.md` and
`trading-vault/Strategy/Risk Rules v2.md` as the authority on every rule referenced below.

**Owner decisions live in `trading-vault/Strategy/Decisions.md` and nowhere else.** That register
is the only place an owner decision can come from. **Never cite a recommendation as an owner
decision** — not your own, not one from an earlier run note, however many times it has been
repeated or however confidently it is worded. If a rule's authority is a note that says "flagging
for the owner", "owner decision wanted", or similar, then **no decision exists**: follow the
written rule and say plainly in your run note that the question is still open. Silence is not
consent. (This guard exists because between 2026-08-25 and 2026-09-17 an unanswered
recommendation was repeatedly cited as an "explicit owner instruction" and the sleeve kept
trading on it, for −$218.16 across three losses.)

Run the following steps in order. Skip the whole cycle if: the market is closed today; it is
before 9:35 AM ET; or the cycle already ran today (check `get_equity_orders` and
`get_option_orders` with `created_at_gte` = today UTC). **A skip is still a run:** write the
step-6 run note recording that it was skipped and why, then push. Never exit without a note.

1. **Circuit-breaker first.** `get_portfolio`. If total account value is below the breaker in
   Risk Rules v2 §7 (50% of contributed capital — see Home for the current figure), liquidate
   every position, halt, write a HALT note in the vault, push, and stop. Do not trade past a
   tripped breaker.

2. **Signals.** Fetch ~65 daily bars for SPY, QQQ, IWM, SMH, XLE, XLF, GLD, TLT
   (`get_equity_historicals`, interval `day`). For each: 10-day return (rank), 20-day SMA,
   RSI(14) (Wilder). Qualify = close > 20-SMA AND RSI ≤ 75. Target book = top 2 qualifiers.

3. **Sells.** For each equity position that is (a) settled, (b) not bought today, and (c) no
   longer a top-2 target: sell (market, regular hours, review first).

   For an options-sleeve position: sell to close (limit at mid, GFD) **only** if the
   underlying's 20-day return turned negative, or the contract has fewer than 21 days to
   expiry. If a GFD close from a prior day expired unfilled, re-place it at the current mid.

   **The sleeve does not read equity rank** (owner decision 2026-09-17, `Decisions` #1 —
   the sleeve went 0-for-3 for −$218.16 with all three closed on rank while their own tests
   still passed). Do **not** close the sleeve because its underlying left slot 1, lost rank,
   failed the §3 filter, or was sold from the equity book in this very cycle. Selling the
   shares and holding the call is the correct, intended outcome: an **orphaned call is legal**
   (Risk Rules v2 §2 sleeve carve-out) and must be left alone until one of its own two tests
   fires. If you find yourself reasoning toward a sleeve exit on any ground other than those
   two tests, stop — that is the exact bug this decision removed.

4. **Buys.** With settled cash only: first, if the sleeve is empty and the gate is open
   (slot-1 underlying's 20-day return > 0), buy 1 conforming call on the slot-1 underlying —
   note the sleeve is opened on slot 1 but never *closed* on it, per step 3 —
   0.50–0.65 delta, 45–90 DTE, premium ≤ 50% of account value, liquid strikes, limit at mid.
   Then deploy remaining settled cash into unfilled target slots (dollar-based market orders,
   roughly equal tranches, keep ~$2 cash buffer).

5. **Order hygiene.** Review every order before placing. Fresh UUID `ref_id` per logical
   order. Never sell a position bought with unsettled funds; never buy with unsettled
   proceeds. Market orders only on penny-spread ETFs during regular hours.

6. **Log — one run note per run, always.** Every run writes exactly one note into
   `trading-vault/Trades/`, **whether or not anything traded** and **even if you skipped the
   cycle in the guard above**. `Trades/` is the run ledger: a quiet day and a missed day must
   never look the same in that folder. Use the exact filename prefix the runner injects under
   "This run" below and append a short outcome to it — e.g.
   `… Cycle — No Trades.md`, `… Cycle — Rotation XLF out, GLD in.md`,
   `… Cycle — Skipped (market closed).md`, `… Cycle — HALT (breaker tripped).md`.

   Open the note with this block, keys verbatim, so a flat day is scannable at a glance:

   ```
   ---
   tags: [trade, run, <traded|no-trades|skipped|halt>]
   date: YYYY-MM-DD
   slot: "HHMM"
   kind: cycle
   outcome: <the same short outcome used in the filename>
   ---

   # YYYY-MM-DD HHMM Cycle — <outcome>

   | | |
   |---|---|
   | Ran | HH:MM ET |
   | Account | $X (equity $Y + cash $Z), N% vs contributed |
   | Circuit-breaker | $N — account at N× — clear / **TRIPPED** |
   | Signals | rank 1 SYM (+N% 10d, RSI N), rank 2 SYM (…) |
   | Target book | slot 1 SYM, slot 2 SYM |
   | Held | SYM, SYM — unchanged |
   | **Traded** | **none — <one-line reason>**  *(or the order table)* |
   | Options sleeve | empty/held/closed — one-line why |
   | Realized / unrealized P&L | $X / $Y |
   | Blocked | none / … |
   ```

   Then the prose. On a day that traded, keep the existing depth: per-leg order table with
   fills, `ref_id`s, verbatim review quotes, resulting position, hygiene notes. On a day that
   did **not** trade, spend the note on *why there was nothing to do* — no rotation because
   the book is still the top-2, no buys because settled cash is only the buffer, sleeve priced
   out against the premium cap — plus anything that came close to firing and what would tip
   it. "No trades" without a reason is not an acceptable note.

7. **Signals + Home.** Also write the full signal table to `trading-vault/Signals/`, update
   `trading-vault/00 - Home.md` (positions, realized P&L, next-cycle expectations), and add
   the run note to Home's **Trades** list with a one-line summary. Commit with a descriptive
   message and push to the current branch.

8. **Report.** End with a short human-readable summary: account value, **whether anything
   traded (say "no trades" explicitly when nothing did) and why**, realized/unrealized P&L,
   anything blocked or unusual, and the filename of the run note you wrote.
