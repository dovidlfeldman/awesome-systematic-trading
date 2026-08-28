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

## Current state (as of 2026-08-27, ~9:35 AM ET — v3 cycle #8 done, no trades)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) |
| Account value | **$583.25** (−10.3% vs contributed) — equity $581.24, cash $2.01 |
| Realized P&L to date | **−$64.99** (equity legs −$1.91; options sleeve −$63.08) — unchanged, nothing sold this cycle |
| Unrealized P&L | ≈ **−$1.40** on a $582.98 book basis (GLD −$2.72, XLE +$1.32) at the 9:31 ET marks |
| Slot 1 | **GLD** 0.686586 sh @ $424.56 avg ($291.51 basis) — held, still rank 1 |
| Slot 2 | **XLE** 4.699875 sh @ $62.02 avg ($291.50 basis) — held, still rank 2 |
| Cash | $2.01 free, **$0 unsettled** — book is ~100% deployed; $2.01 *is* the required buffer, so there is nothing to deploy |
| Options sleeve | Empty — gate open, but **no conforming GLD call is affordable**: re-verified 08-27 with a live quote — Oct 16 $420C (0.546Δ, 50 DTE, OI 7,449) marks $1,722.50 vs a $291.62 premium cap (5.9× over). **Owner decision 2026-08-25: wait for a bigger account — do NOT relax the delta/DTE spec to fit.** The sleeve stays gated by the Risk Rules v2 §4 premium cap and re-arms on its own once a conforming contract fits (~$3,800+ for GLD-class names, less for XLF/XLE). Accepted that it idles meanwhile |
| Circuit-breaker | $325 (50% of contributed capital) — checked first, account at **1.79×**. Clear (re-verified 15:45 ET: $585.21, **1.80×**) |

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
- **Two open items from 2026-08-28 12:30 (see [[2026-08-28 1230 Check — No Action]]):**
  1. **Unexplained +$258.48 cash.** Free cash went $2.01 → $260.49 with zero orders since 08-27
     and both share counts unchanged; `unsettled_funds` and `pending_deposits` are both $0.
     Consistent with a settled owner deposit. **Contributed capital and the breaker are left
     unchanged pending owner confirmation** — if confirmed, contributed becomes $909.02 and the
     breaker moves $325 → $454.51 (account still clear at 1.84×). Until then the "+28.6% vs
     contributed" reading is a stale-denominator artifact, not a gain: the account is −8.0%
     against contributed-plus-deposit.
  2. **The 08-28 9:30 cycle never re-ranked.** The agent exited at 9:33 ET before its own 9:35
     open-volatility gate, so no rotation decision was made on a day GLD fell 2.8%. GLD/XLE
     ranks are a full trading day stale going into Monday. The `note=stub` column caught it;
     the gate-versus-exit race in `run-daily-cycle.sh` is the thing to fix.
- **Next cycle (Mon 2026-08-31, 9:30 ET):** rotation checks on GLD/XLE, carrying the deferred
  08-28 re-rank plus whatever the new cash turns out to be. Original 08-28 framing below.
- **Prior next-cycle note (Fri 2026-08-28, 9:30 ET — did not execute):** rotation checks on GLD/XLE. The 08-26 RSI worry is off the table — GLD pulled back −1.6% and its RSI cooled to 66.1, seven points of headroom. The live risk now is **rank erosion, not overheating**: the qualifier bench is thin (only TLT +1.45% and XLF +0.59% behind the book), so if GLD or XLE rolls over, slot 2 could go to a weak name or to cash rather than a strong replacement. Book stays fully deployed with $2.01 cash, so a rotation can sell but **cannot redeploy proceeds until T+1** — the one-day cash gap risk carries over unchanged. Sleeve stays empty while GLD holds slot 1 (it only becomes reachable if slot 1 rotates to XLF/XLE).
