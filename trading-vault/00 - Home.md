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
  - [[2026-09-04 Daily Signals]] — v3 cycle #12: **XLF takes slot 1, SPY slot 2, XLE falls to rank 3 by $0.0136**; qualifiers recover 1 → 4 of 8
  - [[2026-09-02 Daily Signals]] — v3 cycle #11: **XLE is the only qualifier (1 of 8)**; TLT fails trend by $0.60, GLD loses its 20-SMA, slot 2 to cash
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
  - [[2026-09-01 1230 Check — No Action]] — midday check, no trades: breaker clear at 2.57×, sleeve empty; XLE +0.6% and holding slot 1, GLD −2.3% since this morning's exit, **TLT a second session below the 20-SMA that won it slot 2 — re-score before buying**
  - [[2026-09-01 1545 Check — No Action]] — close check, no trades: breaker clear at 2.58×, sleeve empty; XLE closed +1.1% (unrealized +$14.01) tightening its hold on slot 1, GLD −2.8% further below this morning's exit, TLT still under its 20-SMA into tomorrow's re-rank
  - [[2026-09-02 0930 Cycle — Options Sleeve Armed (XLE Nov 65C)]] — **traded**: **the options sleeve is finally armed** — 1 XLE Nov 20 $65C at $3.15 ($315, 0.539Δ, 79 DTE) on settled cash; **`review_option_order`/`place_option_order` proven working**. No equity trades: XLE holds slot 1, and with only 1 of 8 names qualifying slot 2 goes to cash. Yesterday's planned Oct 16 contract **fell to 44 DTE overnight and no longer conformed**, forcing the pricier Nov expiry
  - [[2026-09-02 1230 Check — No Action]] — midday check, no trades: breaker clear at 2.59×, **sleeve held** — XLE 20d **+13.3%** (needs negative to fire) and 79 DTE (floor 21), both tests passing wide; first check with a live options position to manage
  - [[2026-09-02 1545 Check — No Action]] — close check, no trades: breaker clear at **2.65×**, **sleeve held** — XLE 20d **+13.8%** and 79 DTE, both tests passing wider than at midday; XLE closed the session **+0.67%** at $65.205 (a new high for the move), call marked $3.35 vs a $3.15 fill (**+$20.00**)
  - [[2026-09-03 0930 Cycle — Run FAILED]] — **ops stub**: agent died on an **API 529 Overloaded** before acting; reconciled by the 12:30 check as a clean no-op — **nothing traded, but the universe was never re-ranked**
  - [[2026-09-03 1230 Check — No Action]] — midday check, no trades: breaker clear at **2.62×**, **sleeve held** — XLE 20d **+12.0%** (the window rolled off the 08-05 low, so the base rose; XLE did not fall) and 78 DTE, both tests passing wide; **reconciled this morning's failed cycle — nothing traded, but the book is held on yesterday's ranks**
  - [[2026-09-03 1545 Check — No Action]] — close check, no trades: breaker clear at **2.55×**, **sleeve held** — XLE 20d **+11.4%** and 78 DTE, both tests still wide; XLE gave back the midday gain to close **−0.48%** at $64.785 and the call marked $3.23 → $3.05, putting the sleeve **−$10.00** on cost; ranks remain stale from 09-02
  - [[2026-09-04 0930 Cycle — Rotation XLE out, XLF+SPY in (sleeve closed)]] — **traded, 4 fills**: the **coupled unwind fired for the first time** — XLF took slot 1 from XLE, so the equity leg sold (+$7.62) *and* the Nov 65C closed (**−$66.04**) in the same session; SPY took slot 2 **by $0.0136 of closing price**. Realized **−$58.42**. **The sleeve is now 2-for-2 on losses (−$129.12) vs −$14.26 from all equity rotations combined.** Account is **87% cash until Tuesday** — $667.05 of proceeds unsettled, only $2.03 deployable
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

## Current state (as of 2026-09-04, 9:35 AM ET — **full rotation executed**: XLE out of both slots, sleeve closed, XLF+SPY in)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) — **unconfirmed +$258.48 not included**; if it is an owner deposit this becomes $909.02 |
| Account value | **$765.65** — equity $96.59, options $0, cash $669.06. **+17.7%** vs $650.54 contributed, or **−15.8%** vs $909.02 if the disputed cash is a deposit. The second figure is the honest one until the owner confirms |
| Realized P&L to date | **−$143.38** (equity legs **−$14.26**; options sleeve **−$129.12**) — **−$58.42 today**: XLE shares +$7.62, XLE Nov 65C −$66.04 |
| Unrealized P&L | **−$0.01** — XLF and SPY were both bought minutes ago at $48.30 each; there is nothing aged enough to have moved |
| Slot 1 | **XLF** 0.829919 sh @ $58.1984 ($48.30 basis) — bought today. Rank 1 at **+2.83% 10d**, RSI 60.5, $0.72 above its 20-SMA. **A token position, not a tranche** — there was only $98.63 of settled cash to split |
| Slot 2 | **SPY** 0.0625 sh @ $772.80 ($48.30 basis) — bought today. Rank 2 at **+1.39% 10d**, RSI 58.6, $3.96 above its 20-SMA. Slot 2 is occupied for the first time since 09-01 |
| Cash | **$669.06, of which only ~$2.03 is settled and deployable.** $667.05 is unsettled proceeds from today's sells and settles **Tuesday 2026-09-08** (Friday trade, T+1). **87% of the account is cash it cannot spend until Tuesday** |
| Options sleeve | **CLOSED and empty.** The XLE Nov 20 $65C sold at **$2.49** ($248.96 net) against a $315.00 cost — **−$66.04**. It closed on the **slot-1 test only**; the other two conditions were far away (20d +11.11%, 77 DTE vs a 21 floor). **The sleeve was killed by XLF outperforming, not by XLE falling.** Not re-armed: XLF's gate is open (+1.30% 20d) but settled cash is $2.03 |
| Circuit-breaker | $325 (50% of contributed capital) — checked first, account at **2.36×** ($440.65 headroom). Clear. *(Also clear at **1.68×** against the $454.51 breaker the deposit reading would imply)* |
| **Concentration** | **Resolved, for the wrong reason.** The 88%-XLE problem is gone because the position was sold, not because it was diversified — the account is now **87% idle cash** with two $48 token legs. Risk went from concentrated to absent; neither is the intended state |
| **Sleeve scorecard** | **0-for-2, −$129.12** (Oct $59C −$63.08; Nov $65C −$66.04) vs **−$14.26** from every equity rotation combined. **The options sleeve is the account's entire loss story.** Both died the same way: a 45–90 DTE call held 2–4 days because slot 1 changed hands. See below |

## Standing schedule

**Scheduler installed 2026-08-25 (launchd).** The 14-day gap is fixed: three `launchd` agents in `~/Library/LaunchAgents/` (`com.dfeldman.trading.*`) now fire on weekdays, machine-local time = ET (DST-tracked):

| Time (ET) | Agent | Script | Scope |
|---|---|---|---|
| 9:30 AM | daily-cycle | `run-daily-cycle.sh` | **Full** rotation (signals → sells → buys → log → push) |
| 12:30 PM | market-check-midday | `run-market-check.sh` | **Risk exits only** — breaker + protective sleeve close; no buys/rotation |
| 3:45 PM | market-check-close | `run-market-check.sh` | Same risk-exits-only check, 15 min before close |

- The two intraday checks run the canonical `automation/market-check-prompt.md`: circuit-breaker first, then close the options sleeve only if the underlying's 20-day return turned negative or the contract is <21 DTE. They **never** buy or rotate — rebalancing is the 9:30 cycle's job alone. **As of 2026-09-02 these checks have an actual position to manage** — for the past month they ran against an empty sleeve and could only ever report "no action."
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
- **Options tooling proven 2026-09-02.** `review_option_order` and `place_option_order` both work under the desktop allowlist — exercised end-to-end (review → place → cancel → re-place → fill) on the XLE Nov 20 $65C. **`replace_option_order` is absent from the allowlist**, so a re-price is cancel-then-place; workable, but it costs two round-trips and briefly takes the order off the book. Worth adding.
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
- **NEW 2026-09-02 — a contract that conforms today may not conform tomorrow.** The 09-01 note
  planned to buy the **Oct 16 $65C at 45 DTE for $207**. Overnight it became **44 DTE** and fell
  through the [[Risk Rules v2]] §4 floor. XLE's chain jumps straight from Oct 16 to Nov 20, so the
  45–90 DTE window held **exactly one expiration** — and the sleeve cost **$315 instead of $207**,
  52% more, for the same strike and delta. On this chain the DTE floor is a cliff, not a slope.
  **Price the contract on the morning you buy it; never carry yesterday's pick forward as valid.**
- **NEW 2026-09-03 — the 9:30 cycle failed on an API 529 and the day's re-rank never happened.**
  The headless agent exited non-zero on `API Error: 529 Overloaded` before taking any action;
  `ensure-run-note.sh` wrote [[2026-09-03 0930 Cycle — Run FAILED]] in its place. The 12:30 check
  reconciled against the broker: **nothing traded** — share count, contract, and cash are all
  unchanged from the 09-02 close — so it was a clean no-op, not a partial run. **What was lost is
  the decision, not money:** the 8-name scoring that sets slot 1, slot 2, and the sleeve's slot-1
  close condition did not run, so the book is held on 09-02 ranks. The intraday checks cannot
  cover for this — re-ranking is exactly the rotation they are forbidden to do, and their two risk
  tests (20d return, DTE) both pass. **This is a new failure mode:** the previous gap-versus-exit
  bug was a race in `run-daily-cycle.sh`; this is an upstream API error with no retry around it.
  **Worth fixing: retry the agent invocation on 429/529 before declaring the slot failed.**
  **Owner action wanted: re-run today's cycle manually, or accept stale ranks until Friday.**
- **NEW 2026-09-04 — the coupled unwind fired, and it works.** The collision flagged as untested
  happened: XLF took slot 1 from XLE, so the equity leg sold **and** the Nov 65C closed in the same
  session. **Four orders, four fills, 14 seconds, zero broker alerts, no partial fills.** The
  mechanism is proven; see [[2026-09-04 0930 Cycle — Rotation XLE out, XLF+SPY in (sleeve closed)]].
  Also proven: the **9:35 open-volatility gate held** (orders placed 9:35:16–9:35:29 with the
  breaker/signals/reviews done during the wait) — **the 08-28 early-exit bug did not recur.**
- **NEW 2026-09-04 — the options sleeve is the whole loss, and the reason is structural.**
  **0-for-2, −$129.12**, against −$14.26 from every equity rotation combined. Both trades died
  identically: buy a 45–90 DTE call on the slot-1 name, then slot 1 changes hands within days and
  the close condition fires long before the thesis can work. **A 79-day contract held for 2 days is
  a mismatch between the instrument and the signal that buys it** — the entry gate (slot 1 +
  positive 20d) moves far faster than the option it selects. Today's call was not closed by a risk
  test: XLE's 20-day return was **+11.11%** and the contract had **77 DTE**. It was closed purely
  because a *different* name outranked it. **Owner decision wanted: either lengthen what holds the
  sleeve open (close on XLE's own trend/DTE, not on losing a relative rank), shorten the contract,
  or retire the sleeve.** Continuing as-is is a third loss waiting to happen.
- **NEW 2026-09-04 — a 1.4-cent close decided a full liquidation.** SPY beat XLE for slot 2 by
  **$0.0136 of closing price** (10-day returns +1.386% vs +1.365%, 2.1 bp apart). §4 has no tie band
  and no hysteresis, so it was executed as written — and XLE promptly fell another −1.44% in the
  first five minutes, so the call was directionally right regardless. But **a rank-boundary
  hysteresis band is worth the owner's consideration**: e.g. an incumbent holds its slot unless
  beaten by ≥25 bp of 10-day return. Today that band saves a spread and a settlement cycle. It is a
  strategy change, not a mid-cycle judgment call, and was deliberately *not* applied on the fly.
- **Next cycle (Mon 2026-09-08, 9:30 ET):**
  1. **Re-rank first, but expect to be unable to act.** Settled cash Monday is **~$2.03**; the
     $667.05 settles **Tuesday 09-08**. Monday's cycle can sell and re-rank but effectively cannot
     buy. **Tuesday is the first day the account can be put back to work at size.**
  2. **XLE is 2 bp behind SPY at rank 3** and can retake a slot on a single session — which would
     mean paying a spread to re-enter a position sold Friday. Watch for exactly the whipsaw the
     hysteresis question above is about.
  3. **The new legs are thin cover.** XLF clears its 20-SMA by 1.2% and SPY by 0.5%; one down
     session puts both back on the boundary, and each is only a $48 position.
  4. **Sleeve re-arm is a Tuesday question at the earliest** — and per the item above, it should be
     an explicit owner decision rather than an automatic re-entry.
  **Breadth improved but is shallow:** qualifiers recovered **1 → 4 of 8** (XLF, SPY, XLE, GLD), and
  QQQ missed by **$0.044**. The risk is no longer "nothing to rotate into" — it is that the account
  is sitting on 87% unspendable cash during the recovery it correctly identified.
