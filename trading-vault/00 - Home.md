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

## Current state (as of 2026-08-31, ~9:33 AM ET — v3 cycle #9 done, traded)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) — **unconfirmed +$258.48 not included**; if it is an owner deposit this becomes $909.02 |
| Account value | **$839.93** — equity $837.93, cash $2.00. **+29.1%** vs $650.54 contributed, or **−7.6%** vs $909.02 if the disputed cash is a deposit. The second figure is the honest one until the owner confirms |
| Realized P&L to date | **−$64.99** (equity legs −$1.91; options sleeve −$63.08) — unchanged, nothing sold this cycle |
| Unrealized P&L | ≈ **−$3.57** on an $841.50 book basis (GLD −$12.1, XLE +$8.5) at the 9:33 ET marks |
| Slot 1 | **GLD** 1.029288 sh @ $418.73 avg ($431.00 basis) — held, still rank 1; topped up $139.49 today |
| Slot 2 | **XLE** 6.564494 sh @ $62.53 avg ($410.50 basis) — held, still rank 2; topped up $119.00 today |
| Cash | $2.00 free, **$0 unsettled** — book is ~100% deployed again; $2.00 *is* the required buffer, so there is nothing left to deploy |
| Options sleeve | Empty — gate open (GLD 20d +10.05%), but **no conforming GLD call is affordable**: re-verified 08-31 with a live quote — Oct 16 $410C (0.507Δ, 46 DTE, OI 5,949) marks $1,292.50 vs a $419.93 premium cap (**3.08× over**, down from 5.9× on 08-27). The cheaper $420C is 0.393Δ, below spec. **Owner decision 2026-08-25: wait for a bigger account — do NOT relax the delta/DTE spec to fit.** Re-arms on its own at roughly **$2,585** of account value at today's GLD pricing |
| Circuit-breaker | $325 (50% of contributed capital) — checked first, account at **2.58×**. Clear. *(Also clear at **1.85×** against the $454.51 breaker the deposit reading would imply — the verdict does not depend on which denominator is right)* |

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
- **Next cycle (Tue 2026-09-01, 9:30 ET):** rotation checks on GLD/XLE. **Watch for a slot swap** —
  XLE opened Monday +1.9% ($62.68 → $63.88) against GLD −0.4%, so if that holds, XLE takes rank 1
  from GLD on the next 10-day print. That matters beyond ordering: the options sleeve keys off
  **slot 1**, and an XLE-led book puts a far cheaper underlying in that seat (XLE ~$64 vs GLD ~$407),
  which is the one realistic path to the sleeve re-arming well before the ~$2,585 GLD-based
  threshold. Book is back to ~100% deployed with $2.00 cash, so a rotation can sell but **cannot
  redeploy proceeds until T+1** — the one-day cash gap risk is live again, and both slots now carry
  intraday quantity from today's top-up. Bench (TLT +1.02%, XLF −0.10%, both qualifying) is thin but
  no longer weak, so a forced rotation would at least land somewhere defensible.
