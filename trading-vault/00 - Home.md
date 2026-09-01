---
tags: [moc]
---

# Trading Vault — Home

Obsidian vault documenting all systematic trading activity in the Robinhood **Agentic** account (cash account ending ••••1227).

## Map of Content

- **Strategy**
  - [[Staggered Daily Swing Rotation v3]] — **active** since 2026-07-29 (owner mandate: constant swing/day trading)
  - [[Risk Rules v2]] — active hard limits
  - [[Aggressive Leveraged Momentum v2]] — retired (leverage switch + options spec carry into v3)
  - [[Dual Momentum Rotation]] — retired v1 (lived one morning)
  - [[Risk Rules]] — retired v1 limits
- **Signals**
  - [[2026-09-01 Daily Signals]] — v3 cycle #10: **XLE to rank 1, TLT edges GLD out of slot 2 by $0.0015**; qualifiers down to 3 of 8
  - [[2026-08-31 Daily Signals]] — v3 cycle #9: no rotation (GLD/XLE hold), idle cash deployed; momentum flat market-wide
  - [[2026-08-27 Daily Signals]] — v3 cycle #8: no rotation, no trades; GLD's RSI cooled to 66.1
  - [[2026-08-26 Cycle Skipped (already ran)]] — **ops**: 15:51 ET re-run stood down; breaker re-verified clear at 1.80×
  - [[2026-08-26 Daily Signals]] — v3 cycle #7: no rotation, settled proceeds deployed; **first fully automated cycle**
  - [[2026-08-25 Daily Signals]] — v3 cycle #6: regime flip to GLD/XLE, full two-slot rotation
  - [[2026-08-25 Automation Gap]] — **ops**: 14 trading days missed; desktop runner proven working today
  - [[2026-08-05 Cycle Skipped (after close)]] — **ops**: post-close re-run skipped; found the headless runner has never had broker permission
  - [[2026-08-05 Daily Signals]] — v3 cycle #5: XLF/SPY book set; sleeve re-arm blocked on tool approval
  - [[2026-08-04 Daily Signals]] — v3 cycle #4: XLF takes the lead, XLE rotated out, sleeve closing
  - [[2026-08-03 Daily Signals]] — v3 cycle #3: XLE holds, GLD whipsawed out, XLF queued
  - [[2026-07-31 Daily Signals]] — v3 cycle #2: XLE holds, GLD takes slot 2, options sleeve engaged
  - [[2026-07-30 Daily Signals]] — v3 cycle #1: XLE/XLF lead, semis crash dodged
  - [[2026-07-29 Momentum Rankings v2]] — aggressive-mandate signal (SMH #1, leverage off)
  - [[2026-07-29 Momentum Rankings]] — original v1 signal
- **Trades** — **the run ledger.** From 2026-08-27 every scheduled run writes exactly one
  note here — the 9:30 cycle and both intraday checks alike — whether or not anything traded,
  and even when the run is skipped. A slot with no note means the run did not happen. Notes
  before that date are trade-only (a quiet day left nothing behind), which is the gap this
  ledger closes.
  - [[2026-07-29 IWM Buy]] — filled (v1)
  - [[2026-07-29 EEM Buy]] — filled (v1, after [[2026-07-29 EEM Buy (blocked)|the investor-profile block]])
  - [[2026-07-29 Rotation Sells]] — filled (v1 liquidation, +$0.54)
  - [[2026-07-30 SMH Buy (scheduled)]] — never executed: v3 signal disqualified SMH (−23% 20d), dodging ~−10%
  - [[2026-07-30 XLE Buy]] — filled (tranche A, v3 cycle #1)
  - [[2026-07-31 GLD Buy]] — filled (tranche B, v3 cycle #2)
  - [[2026-07-31 XLE Call Buy]] — Oct $59C filled at $2.73 (sleeve first engagement)
  - [[2026-08-03 GLD Sell]] — whipsaw exit, +$0.13 realized
  - [[2026-08-04 Rotation XLE out, XLF in]] — XLE −$2.97 realized; XLF in at $57.35; call closed −$63.08
  - [[2026-08-05 SPY Buy]] — filled (tranche A, slot 2)
  - [[2026-08-25 Rotation XLF+SPY out, GLD+XLE in]] — full two-slot rotation; XLF +$2.48, SPY −$2.10
  - [[2026-08-26 GLD+XLE Top-Up]] — filled; settled rotation proceeds deployed, book now ~100% invested
  - [[2026-08-27 1545 Check — No Action]] — close check, no trades: breaker clear at 1.80×, sleeve empty, no rotation (first run-ledger note)
  - [[2026-08-28 0930 Cycle — No Run Note (agent finished without writing one)]] — **ops stub**: agent exited at 9:33 ET before the 9:35 gate; broker-reconciled, nothing traded, **no re-rank happened**
  - [[2026-08-28 1230 Check — No Action]] — midday check, no trades: breaker clear, sleeve empty; **cash up $258.48 with no sale (apparent deposit — needs owner confirmation)**; GLD −2.8%
  - [[2026-08-28 1545 Check — No Action]] — close check, no trades: breaker clear at 2.57×, sleeve empty; GLD closed the week −3.1% with **ranks still unscored since Thursday**
  - [[2026-08-31 0930 Cycle — Top-Up GLD+XLE (idle cash deployed)]] — **traded**: no rotation (GLD/XLE still top-2), $258.49 of idle settled cash deployed into both slots; account back to ~100% invested, deferred 08-28 re-rank cleared
  - [[2026-08-31 1230 Check — No Action]] — midday check, no trades: breaker clear at 2.57×, sleeve empty; book quiet (GLD −0.4%, XLE +0.9%), XLE leading a second session into tomorrow's re-rank
  - [[2026-08-31 1545 Check — No Action]] — close check, no trades: breaker clear at 2.59×, sleeve empty; XLE closed +1.9% vs GLD −0.4%, tightening the GLD/XLE rank-1 race into tomorrow's cycle
  - [[2026-09-01 0930 Cycle — Rotation GLD out, slot 2 to cash]] — **traded**: GLD sold in full at $399.3303 (**−$19.97 realized**) after TLT cleared its 20-SMA by $0.0015 and took slot 2; proceeds unsettled so no buy — slot 2 and the sleeve both wait for 09-02. **Found the account is `limited_margin`: the T+1 wall is policy, not broker mechanics.** **XLE in slot 1 makes a conforming call affordable for the first time ($207 vs a $419 cap)**
- **Checks** — *archive.* Per-check notes through 2026-08-27 12:30; superseded by the Trades
  run ledger above, which now carries the intraday checks too. Nothing new is written here.
  - [[2026-08-27 1230 Midday Check]] — no action: breaker clear at 1.79×, sleeve empty
  - [[2026-08-26 1545 Close Check]] — no action: breaker clear at 1.80×, sleeve empty
  - [[2026-08-26 1230 Midday Check]] — no action: breaker clear at 1.81×, sleeve empty
  - [[2026-08-25 1236 Midday Check]] — no action: breaker clear at 1.80×, sleeve empty
  - [[2026-08-25 1545 Close Check]] — no action: breaker clear at 1.80×, sleeve empty
- **Journal**
  - [[2026-07-29 Initial Deployment]] — v1 deployment narrative
  - [[2026-07-29 Mandate Change to Aggressive]] — why everything changed at 10 AM
  - [[2026-07-29 Mandate v3 Constant Swing]] — daily cadence, and the T+1 wall it's built around

## Current state (as of 2026-09-01, ~9:36 AM ET — v3 cycle #10 done, traded)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) — **unconfirmed +$258.48 not included**; if it is an owner deposit this becomes $909.02 |
| Account value | **$837.70** — equity $424.03, cash $413.67. **+28.8%** vs $650.54 contributed, or **−7.8%** vs $909.02 if the disputed cash is a deposit. The second figure is the honest one until the owner confirms |
| Realized P&L to date | **−$84.96** (equity legs −$21.88; options sleeve −$63.08) — GLD's rotation exit cost **−$19.97** today |
| Unrealized P&L | **+$13.53** on a $410.50 book basis (XLE only) at the 9:36 ET marks |
| Slot 1 | **XLE** 6.564494 sh @ $62.53 avg ($410.50 basis) — held, **promoted to rank 1** (+2.21% 10d, +8.79% 20d, RSI 67.5) |
| Slot 2 | **Cash.** Target is **TLT**, but it could not be bought — see below. GLD was sold out of this slot today |
| Cash | $413.67 total, of which **$411.03 is unsettled** (GLD proceeds, settle 2026-09-02) and only **$2.64 is free** — which *is* the required buffer. Nothing was deployable today |
| Options sleeve | Empty — but **the pricing blocker is gone**. With XLE (~$64.66) in slot 1 instead of GLD (~$408), a conforming call is affordable for the first time: **Oct 16 $65C, 0.519Δ, 45 DTE, OI 7,903, $207 premium vs a $419.07 cap**. Gate open (XLE 20d +8.79%). Blocked **only on settled cash**, not on spec and not on the cap. **The ~$2,585 re-arm threshold below is obsolete** — it was a GLD-priced figure; at XLE pricing the sleeve arms at roughly **$414** of account value. No spec relaxation needed, so the owner's 2026-08-25 instruction stands and is now moot |
| Circuit-breaker | $325 (50% of contributed capital) — checked first, account at **2.58×**. Clear. *(Also clear at **1.84×** against the $454.51 breaker the deposit reading would imply — the verdict does not depend on which denominator is right)* |

## Standing schedule

**Scheduler installed 2026-08-25 (launchd).** The 14-day gap is fixed: three `launchd` agents in `~/Library/LaunchAgents/` (`com.dfeldman.trading.*`) now fire on weekdays, machine-local time = ET (DST-tracked):

| Time (ET) | Agent | Script | Scope |
|---|---|---|---|
| 9:30 AM | daily-cycle | `run-daily-cycle.sh` | **Full** rotation (signals → sells → buys → log → push) |
| 12:30 PM | market-check-midday | `run-market-check.sh` | **Risk exits only** — breaker + protective sleeve close; no buys/rotation |
| 3:45 PM | market-check-close | `run-market-check.sh` | Same risk-exits-only check, 15 min before close |

- The two intraday checks run the canonical `automation/market-check-prompt.md`: circuit-breaker first, then close the options sleeve only if the underlying's 20-day return turned negative or the contract is <21 DTE. They **never** buy or rotate — rebalancing is the 9:30 cycle's job alone.
- **Vault mirror:** every run copies the whole vault (`00 - Home.md` plus `Trades/`, `Signals/`, `Checks/`, `Journal/`, `Strategy/`) into `~/TradingVaultMirror/` via `automation/mirror-trades.sh`, preserving structure — so trade notes land in `Trading/Trades/`, not flat in `Trading/`. `~/Documents/Obsidian Vault/Trading` is a symlink to that path: `~/Documents` is TCC-protected and launchd cannot write there. One-way; the repo stays the git source of truth.
- **Root cause of the old gap:** there was never any cron/launchd entry at all — the 08-05 and 08-25 runs were both manual. Liveness now visible via `automation/logs/launchd-*.{out,err}` and the per-run `cycle-*`/`check-*` logs.
- Kill switch: `launchctl bootout gui/$(id -u)/com.dfeldman.trading.<label>` for any agent, or revoke the Robinhood connector.
- Machine must be awake at the fire time; if asleep, launchd runs the job once on wake.
- **Scheduler proven 2026-08-26:** the 9:30 daily-cycle agent fired on its own and ran the full cycle end-to-end (breaker → signals → sells → buys → log → push) with no manual ping. The [[2026-08-25 Automation Gap]] is closed in practice, not just in config. Orders are held to 9:35 by the cycle's open-volatility gate; read-only work runs during the wait.
- **Run ledger (added 2026-08-27):** every run writes one note to `trading-vault/Trades/`,
  trades or not, so "did the bot run today?" is answered by looking in one folder instead of
  inferring it from an absence. If the headless agent dies without writing its note,
  `automation/ensure-run-note.sh` writes a stub in its place recording that the slot fired and
  that what traded is unknown — a missed run can no longer masquerade as a quiet day. The
  tracked `automation/run-status.tsv` carries a matching `note=ok|stub` column, so the same
  fact is visible from the git remote without the vault.
- Still untested: `review_option_order` / `place_option_order` under the desktop allowlist. Nothing affordable came up to exercise them.
- **Scheduler proven again 2026-08-27:** second consecutive unattended 9:30 cycle, full path (breaker → signals → sells → buys → log → push) with no manual ping.
- **Status of the two open items from 2026-08-28 (both moved on 08-31):**
  1. **Unexplained +$258.48 cash — still unconfirmed, but now deployed.** Free cash went
     $2.01 → $260.49 with zero orders and both share counts unchanged; `unsettled_funds` and
     `pending_deposits` both $0. The 08-31 cycle **deployed it** into GLD/XLE rather than let a
     third of the account sit idle indefinitely: it has fully cleared, it matches the owner's
     prior $250 deposit on 07-31, and the position is reversible for ~1–3 bp if the owner says
     otherwise. **Contributed capital and the breaker are still left unchanged pending owner
     confirmation** — deploying cash is a trading call, restating the denominator is a fact
     nobody has confirmed. If confirmed, contributed becomes $909.02 and the breaker moves
     $325 → $454.51 (account still clear at 1.85×). Until then the "+29.1% vs contributed"
     reading is a stale-denominator artifact, not a gain: the account is −7.6% against
     contributed-plus-deposit. **Owner action still wanted: confirm or deny the deposit.**
  2. **The 08-28 missed re-rank is cleared.** ✅ The 08-31 cycle scored all 8 names on fresh bars
     through the 08-28 close; no rotation was owed (GLD/XLE were still the top two), so the
     skipped Friday decision cost nothing. **The underlying bug is not fixed:** the 08-28 agent
     exited at 9:33 ET before its own 9:35 gate. The 08-31 run avoided it by filling the wait
     with read-only work and placing at 9:32:38, but the gate-versus-exit race in
     `run-daily-cycle.sh` is still the thing to fix.
  3. **New 08-31: the agent could not commit or push.** `git add`/`commit`/`push` were refused by
     the agent's permission layer on a non-interactive run, so the 08-31 vault files (run note,
     signals, this file) were written to disk but **left uncommitted**. Neither post-step covers
     it — `ensure-run-note.sh` exits early once a note exists, and `record-status.sh` stages only
     `run-status.tsv`. The Obsidian mirror still updated (it copies the working tree), so only the
     git remote goes stale. **Files committed and pushed by the 12:30 check** (run note, signals,
     Home, plus the uncommitted run-ledger automation changes), so the remote is current again.
     **Still open: the permissions fix, so the next cycle can publish itself unattended.**
- **NEW 2026-09-01 — the T+1 wall is policy, not broker mechanics. Owner decision wanted.**
  After today's GLD sale the broker reported **$413.67 of buying power** with the proceeds included.
  This account is **`type: limited_margin`**, not a cash account, so unsettled proceeds *are*
  tradable in it with no good-faith-violation risk — `unsettled_funds` was $411.03 and buying power
  still offered all of it. [[Staggered Daily Swing Rotation v3]] opens by calling same-day
  redeployment *"structurally impossible"* and the whole tranche-stagger design is built on that
  premise; **the premise is wrong for this account.** The actual constraint is
  [[Risk Rules v2]] §6 (*"settled funds only for sizing"*) — a conservatism the owner adopted, not a
  wall the broker imposes. §6 was followed today (no buy on $2.64 of genuinely settled cash), which
  idled ~$411 — about half the book — for a day, and delayed a sleeve entry that has been blocked
  for a month. **Under a daily-cadence mandate this rule costs a day of exposure after every
  rotation.** Keep it or relax it — but it should be a decision, not an inherited assumption.
- **Next cycle (Wed 2026-09-02, 9:30 ET):** ~$413 settles overnight and the cycle finally has money
  to deploy. Two things to get right:
  1. **The sleeve should arm.** XLE holds slot 1, the gate is open (+8.79% 20d), and the Oct 16
     $65C conforms at $207 against a ~$419 cap. This will be the **first live exercise of
     `review_option_order` / `place_option_order`** under the desktop allowlist — still untested, so
     watch for a *permission* failure rather than a pricing one. Note it sits at the 45-DTE floor
     and hits the 21-DTE forced-close rule around **2026-09-25**.
  2. **Re-score TLT before buying it.** It won slot 2 by $0.0015 on the 08-31 close and traded
     **$81.98 on 09-01, ~$0.54 *below* that same 20-SMA**, so it may simply fail tomorrow. The
     settled-cash rule accidentally bought a one-day confirmation lag here.
  Step 4 ordering (sleeve first, then slots) leaves ~$205 for slot 2 after a $207 sleeve — workable.
  **Bench risk is now acute:** qualifiers fell 5 → 3, XLF and SPY both lost their 20-SMAs, and six of
  eight names are below trend. If XLE or TLT rolls over there is no fourth name and §4 sends that
  slot to cash. XLE is also carrying 100% of equity exposure at RSI 67.5 — only 7.5 points under the
  75 disqualification cap, so a sharp further rally could empty *both* slots.
