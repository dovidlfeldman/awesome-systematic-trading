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
  - [[2026-09-10 Daily Signals]] — v3 cycle #15: **XLE and SMH swap slots 1↔2 (a reorder, not a rotation)**; QQQ fails exactly as both 09-09 checks predicted, qualifiers 3 → **2 of 8**, all six failures below their 20-SMA. **Slot 1 becoming a cheap name re-opened the options sleeve** — gate clear by 719 bp, not calendar noise
  - [[2026-09-09 Daily Signals]] — v3 cycle #14: **XLF fails the trend filter and leaves the book; XLE returns at rank 2**; qualifiers 5 → **3 of 8**, all five failures below their 20-SMA. **Both 20-day gates (leverage, sleeve) opened on SMH's +0.76% — and neither fired**
  - [[2026-09-08 Daily Signals]] — v3 cycle #13: **SMH goes rank 8 → rank 1 on one green session**; XLF demoted to slot 2, SPY out; qualifiers 4 → 5 of 8. Leverage gate **shut** (SMH 20d −2.69%), so 1x SMH not SOXL
  - *(no 2026-09-07 note — Labor Day, no session and no new bar. Writing one would have restated the
    09-04 table under a date on which no market data existed, implying a re-rank that did not happen.
    Ranks are stale by design until 09-08; see the run note in Trades.)*
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
  - [[2026-09-04 1230 Check — No Action]] — midday check, no trades: breaker clear at **2.36×**, **sleeve empty** (closed this morning, so both sleeve tests are n-a); the two new $48 legs drifted −$0.16 combined, and **XLE fell a further −0.80% to $64.10**, widening the gap behind this morning's 1.4-cent slot-2 decision
  - [[2026-09-04 1545 Check — No Action]] — close check, no trades: breaker clear at **2.36×**, **sleeve empty** (both tests n-a for a second consecutive check); the two $48 legs closed the week soft — XLF −0.79%, SPY −0.42%, combined unrealized **−$0.27** — and **XLE fell another −0.88% to $64.05**, a full session down since this morning's exit
  - [[2026-09-07 0930 Cycle — Skipped (market closed, Labor Day)]] — **skipped at the guard**: US markets closed for **Labor Day**; no signals scored, nothing traded, breaker re-verified clear at **2.35×**. **Found the 09-04 forward plan had the calendar wrong** — it called 09-08 "Monday" and assumed a 09-07 session, so **settlement of the $667.03 is Wed 09-09, not Tue 09-08**; the account is unspendable one session longer than planned
  - [[2026-09-07 1230 Check — Skipped (market closed, Labor Day)]] — **skipped at the guard**: holiday re-verified against the tape at 12:30 (no print since Friday 15:59:59 ET, book still stale-wide), nothing traded; breaker clear at **2.35×**, sleeve empty so both tests n-a, settlement guard not binding
  - [[2026-09-07 1545 Check — Skipped (market closed, Labor Day)]] — **skipped at the guard**: third and final skip of the holiday, re-verified 15 minutes before what would have been the close — still **zero prints all day**, zero orders placed by anyone; breaker clear at **2.35×**, sleeve empty (5th straight check), book closes the day exactly as the 09-04 rotation left it
  - [[2026-09-08 0930 Cycle — Rotation SPY out, SMH in (cash redeployed)]] — **traded, 3 fills**: **SMH takes slot 1 from rank 8 on a single +2.61% session**; SPY sold out of the book (−$0.26), XLF **demoted 1 → 2 and held, not churned** — the first time the demote-but-hold path has fired — then topped up. **The plan's settlement date was wrong: `unsettled_funds` was $0 and all $669.06 was spendable today, not Wednesday**, so $664 went to work and the account went 87% idle cash → **93% invested with two tranches $0.80 apart**. Sleeve stayed empty on **its own trend gate** (SMH 20d −2.69%) for the first time ever
  - [[2026-09-08 1230 Check — No Action]] — midday check, no trades: breaker clear at **2.35×**, sleeve empty (both tests n-a); the two legs split — **SMH +1.44%** and now $9.46 above its 20-SMA (this morning's "one bad session from disqualification" risk receded), while **XLF −0.95% has fallen ~$0.30 *below* its 20-SMA** and on current prices would fail the §3 filter. Logged for tomorrow's re-rank, not acted on — rotation is the 9:30 cycle's call
  - [[2026-09-08 1545 Check — No Action]] — close check, no trades: breaker clear at **2.34×**, sleeve empty (both tests n-a, 7th straight check); **XLF −1.16% on the day and now $0.42 below its 20-SMA** — it would fail the §3 filter on current prices, logged for tomorrow's re-rank rather than acted on. **SMH +1.07% and its 20-day return crossed back positive (+0.64% vs −2.69% at 9:30)** as the window rolled off the 08-07 high — the sleeve gate that refused a call this morning would now be open, but entries are buys and out of scope for a check
  - [[2026-09-09 0930 Cycle — Rotation XLF out, XLE in]] — **traded, 2 fills**: XLF sold in full at $56.9015 (**−$5.27**) after failing the §3 trend filter *and* falling to rank 7 — **both of yesterday's checks predicted this and correctly deferred it to the cycle**; XLE returned at rank 2 but could only be funded with **$51 of settled cash**, leaving $351.02 idle until 09-10. **The sleeve's trend gate opened for the first time and the trade was still impossible** — the only conforming SMH contract costs **$4,262.50 against a $379.06 cap (11.2×)**. The leverage switch also opened (SMH 20d +0.76%) and was **deliberately not taken** — it is a buy-time rule and no slot-1 buy was due
  - [[2026-09-09 1230 Check — No Action]] — midday check, no trades: breaker clear at **2.33×**, sleeve empty (both tests n-a, 8th straight check); **SMH's 20-day return decayed +0.76% → ~0.00% on a −0.14% day — the window rolled off the 08-10 close, so both gates that opened this morning are shut again by the calendar, not by price.** Book healthy on the §3 test (SMH +1.29%, XLE +3.42% above their 20-SMAs); XLF **+0.43% since this morning's exit**, and **QQQ −0.45% is on track to fail, cutting qualifiers 3 → 2**
  - [[2026-09-10 0930 Cycle — Options Sleeve Re-Armed (XLE Nov 66C) + Slot 1 Top-Up]] — **traded, 2 fills**: **the options sleeve is re-armed** — 1 XLE Nov 20 $66C at $2.95 ($295, 0.529Δ, 71 DTE) filled **exactly at mid**, plus $56 of XLE equity into the starved slot 1. **XLE and SMH only swapped ranks 1↔2, so §5 held both and no rotation was owed.** The sleeve fired because **slot 1 became a cheap name**, not because the signal changed — the same arithmetic that made SMH's call cost 11.2× the cap gives XLE's at 39.3% of account. **Rejected the cheaper Oct 30 expiry as illiquid: 0 OI, 0 volume, $0.34 × $4.45 book** — a new screen (conforming greeks ≠ tradable contract). Account **99.7% deployed**, cash $2.11. **The 09-04 sleeve-design question is now live money, not hypothetical — owner decision wanted urgently**
  - [[2026-09-10 1230 Check — No Action]] — midday check, no trades: breaker clear at **2.25×**, **sleeve held** — XLE 20d **+6.82%** and **71 DTE**, both tests passing by percentage points, not basis points; the new Nov 66C marks $2.77 vs a $2.95 fill (**−$18.00**, first-session drift, not a close condition). **SMH −2.09% at $562.26 is now $3.44 below its 20-SMA and its 20d flipped +0.24% → −3.86%** — it would fail §3 at tomorrow's re-rank, logged not acted on; XLE passes §3 wide (+2.96% over its 20-SMA)
  - [[2026-09-09 1545 Check — No Action]] — close check, no trades: breaker clear at **2.33×**, sleeve empty (both tests n-a, 9th straight check); **the 12:30 call on QQQ came true — at $716.17 it closed $1.22 *below* its 20-SMA, cutting qualifiers 3 → 2 (SMH, XLE) on current prices.** Both legs pass §3 wide (SMH +1.38%, XLE +3.58% above their 20-SMAs); XLE **+0.91%** on the day vs SMH flat (−0.05%), and **SMH's 20d round-tripped +0.76% → ~0.00% → +0.09% in one session with the price barely moving** — the sleeve/leverage gate margin is calendar noise. XLF $57.16, **+0.45% since this morning's exit**
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

## Current state (as of 2026-09-10, 9:36 AM ET — **traded**: options sleeve re-armed on XLE + slot-1 top-up; no rotation owed, the top two merely swapped ranks)

| Item | Value |
|---|---|
| Contributed capital | $650.54 ($400 start + $250 deposit 2026-07-31) — **unconfirmed +$258.48 not included**; if it is an owner deposit this becomes $909.02 |
| Account value | **$750.92** — equity $452.31, options $296.50, cash $2.11. **+15.4%** vs $650.54 contributed, or **−17.4%** vs $909.02 if the disputed cash is a deposit. The second figure is the honest one until the owner confirms |
| Realized P&L to date | **−$148.91** (equity legs **−$19.79**; options sleeve **−$129.12**) — **unchanged today; nothing was sold** |
| Unrealized P&L | **−$9.19** on $758.00 of cost — **SMH carries all of it** at $560.80 vs a $578.06 basis (−$10.63, −2.35% on the session); XLE equity −$0.06, the new Nov 66C **+$1.50** |
| Slot 1 | **XLE** — equity 1.632641 sh @ $65.5380 ($107.00 basis) **plus** 1 Nov 20 $66C @ $2.95 ($295.00). Rank 1 at **+5.24% 10d**, RSI 68.4, **$1.99 (3.14%) above its 20-SMA**, and **+7.19% over 20 days — the strongest 4-week trend in the universe by ~10×**. Topped up $56 today |
| Slot 2 | **SMH** 0.615853 sh @ $578.0600 ($356.00 basis) — held from 09-08, **demoted 1 → 2 and held, not churned**. Rank 2 at **+3.32% 10d**, RSI 53.2, $8.59 (1.52%) above its 20-SMA *on the 09-09 close* — but **trading −2.35% today, which would put it below that SMA**. See the forward plan |
| **Ranks** | **Fresh as of the 2026-09-09 close** (scored this morning) — one new session since the last scoring |
| Cash | **$2.11** — the buffer, nothing more. `unsettled_funds` **$0.0000**, verified before *and* after trading. The account is **99.7% deployed**, the most fully invested it has been under v3 |
| Options sleeve | **Re-armed today: 1 XLE Nov 20 $66C, 0.529Δ, 71 DTE, $295.00 at exactly the mid.** Premium at risk = **39.3%** of account against the §4 50% cap. It fired because **slot 1 became a cheap name**, not because the signal improved — and the gate is clear by **719 bp**, not the 24–76 bp of calendar noise the last three cycles flagged |
| Circuit-breaker | $325 (50% of contributed capital) — **checked first, before any order**; account at **2.31×** ($425.92 headroom). Clear. *(Also clear at **1.65×** against the $454.51 breaker the deposit reading would imply)* |
| **Concentration** | **XLE is now 53.7% of the account** ($106.94 equity + $296.50 premium = $403.44) vs SMH's $345.37 — so slot 1 is the larger leg by exposure while holding the smaller *equity* leg. **Compliant: §2 allows this only for the top-ranked asset, and XLE is rank 1.** The delta-adjusted XLE notional from the call alone is ~$3,424 |
| **Sleeve scorecard** | **0-for-2, −$129.12** (Oct $59C −$63.08; Nov $65C −$66.04) vs **−$14.26** from every equity rotation combined. **The options sleeve is the account's entire loss story**, and as of today **trade #3 is open**. Both prior deaths were identical: a 45–90 DTE call held 2–4 days because slot 1 changed hands — and slot 1 has changed hands **three times in five sessions** |

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
  **Update 2026-09-10: the third trade is now open** (XLE Nov 20 $66C, $295). The sleeve was blocked on
  *affordability* every day since 09-04, so the unanswered question was never forced; today slot 1
  became a cheap name and it was. The trade was placed because **v3 §9 and [[Risk Rules v2]] §4
  authorize it and no owner decision has changed them** — declining would have substituted this run's
  judgment for the owner's on a live strategy question. **The decision is now about real money, and
  slot 1 has changed hands three times in five sessions.** Highest-value fix remains #1: close the
  sleeve on XLE's *own* trend/DTE rather than on losing a relative rank.
- **NEW 2026-09-04 — a 1.4-cent close decided a full liquidation.** SPY beat XLE for slot 2 by
  **$0.0136 of closing price** (10-day returns +1.386% vs +1.365%, 2.1 bp apart). §4 has no tie band
  and no hysteresis, so it was executed as written — and XLE promptly fell another −1.44% in the
  first five minutes, so the call was directionally right regardless. But **a rank-boundary
  hysteresis band is worth the owner's consideration**: e.g. an incumbent holds its slot unless
  beaten by ≥25 bp of 10-day return. Today that band saves a spread and a settlement cycle. It is a
  strategy change, not a mid-cycle judgment call, and was deliberately *not* applied on the fly.
- **NEW 2026-09-07 — the forward plan had the calendar wrong, and it cost a settlement day.**
  The 09-04 note and this file both wrote *"Next cycle (Mon 2026-09-08)"* — but **09-08 is a Tuesday**,
  and the plan had silently assumed a trading session on **Mon 09-07, which is Labor Day.** The skip
  guard caught the holiday this morning, but only *after* the plan had been built around a session
  that was never going to happen. The harmless half: the "Monday can re-rank but not buy" session
  simply does not exist, and nothing was lost because settled cash was $2.03 either way. **The
  half that matters: T+1 counts business days, so the $667.03 settles Wed 2026-09-09, not Tue 09-08.**
  The account is 87% unspendable for **one session longer** than planned. **Worth fixing: check the
  market calendar when writing the forward plan, not only in the skip guard** — the guard protects
  the run, it does not protect the plan. See [[2026-09-07 0930 Cycle — Skipped (market closed, Labor Day)]].
- **NEW 2026-09-08 — the forward plan got the calendar wrong a second time, in the opposite
  direction, and only a broker re-check saved it.** Yesterday's note and this file both said the
  $667.03 settles **Wed 09-09** and that today's cycle *"effectively cannot buy."* At 9:30 the broker
  reported `unsettled_funds` **$0.0000** and buying power **$669.06** — it had **already settled**.
  T+1 from Friday 09-04 is the *next business day*; Labor Day is not one, so the next is **Tuesday
  09-08**. The 09-07 note correctly saw that the holiday pushes settlement past Monday, then
  **counted the holiday as consuming a settlement day instead of simply not being one.** Two
  consecutive cycles have now mis-stated a settlement or session date from memory. **Had this run
  trusted its own written plan it would have skipped $664 of buys and posted a perfectly reasonable
  "waiting on settlement" note.** The fix is concrete and cheap: **`unsettled_funds` from
  `get_accounts` is authoritative, free, and must be read before the plan's date arithmetic is
  believed.** See [[2026-09-08 0930 Cycle — Rotation SPY out, SMH in (cash redeployed)]].
- **NEW 2026-09-08 — "demote but hold" fired for the first time, and the sleeve gate refused a
  trade on its own.** Two paths that had only ever existed on paper both executed today: XLF slid
  slot 1 → slot 2 and was **held rather than churned** (§5 sells only when a holding is no longer
  *a* target slot), and the options sleeve was blocked by **its own 20-day trend filter** rather
  than by a lack of cash — SMH's 20d is −2.69% against a gate that needs positive. Every previous
  sleeve non-entry was a cash constraint. **On a 0-for-2, −$129.12 sleeve, a gate that declines to
  buy a 45–90 DTE call on a name whose 4-week trend is negative is the design working.**
- **NEW 2026-09-08 — slot 1 is rank-1 on a signal two other gates distrust.** SMH is slot 1 because
  its **10-day** return is highest (+1.18%), on the strength of a single +2.61% session that also
  carried it back over its 20-SMA from rank 8. Its **20-day** return is **−2.69%** — and both gates
  that read the 20-day number (leverage → SOXL, and the sleeve) **refused**. Only the equity slot,
  which never consults the 20-day return, said yes. It is also the name [[2026-07-30 SMH Buy
  (scheduled)]] was cancelled on at −23% 20d, dodging ~−10%. The difference is degree, not kind.
  **Worth the owner's attention: should slot selection consult the 4-week trend the other two gates
  already use?**
- **NEW 2026-09-09 — the sleeve is dormant by arithmetic whenever slot 1 is an expensive name, and
  the trend gate has nothing to do with it.** Today the sleeve's 20-day trend filter **passed** for
  the first time since the sleeve last went empty — and the trade was still impossible. The 45–90
  DTE window held exactly one SMH expiration (Nov 20, 72 DTE; Oct 23 is 44 DTE, one day short — the
  **same one-expiration cliff the 09-02 note found on XLE**, now confirmed as a property of these
  chains). The conforming contract marks **$4,262.50 against a $379.06 cap — 11.2× over, 80× settled
  cash.** A ~0.55Δ call at ~72 DTE costs roughly **7% of the underlying's price**, so the sleeve's
  real constraint is *underlying × 0.07 ≤ 50% of account value*. At this account size **SMH ($575),
  QQQ ($716), SPY ($766) and GLD ($400) are permanently unreachable; XLE ($66), XLF ($57), TLT ($82)
  and IWM ($295) are reachable** — and both prior sleeve trades were XLE calls at $273–$315 for
  exactly that reason. **The sleeve can only ever fire when slot 1 is a cheap name.** Before asking
  "why didn't the sleeve fire," check the ticket price, not the signal.
- **NEW 2026-09-09 — the leverage switch opened and was deliberately not taken. Owner call wanted.**
  SMH's 20-day return crossed to **+0.76%**, which technically arms the v3 rule *"if a slot's target
  is SMH and semis' 4-week trend is positive, the slot buys SOXL instead."* It was not acted on:
  **the switch governs what a slot buys, and slot 1 was already filled** — §5 sells only when a
  holding stops being a target slot, and SMH is still slot 1. Reading it as a standing instruction
  would mean churning a settled 1× position into its 3× wrapper on a **76 bp** signal margin,
  costing a spread and a settlement day. **Recommend codifying it as a buy-time rule**, which also
  avoids the sleeve's exact failure mode — a gate that moves daily pointed at an instrument that
  does not. Left as-is pending the owner; it should be written down, not inferred.
  **Update, 12:30 same day: the switch has already closed itself.** SMH's 20-day return decayed
  **+0.76% → ~0.00% (−0.004%)** by lunchtime with the price down only −0.14% — the window rolled off
  the 08-10 close ($569.41) and picked up 08-11's ($572.93). **The base rose; SMH did not fall.**
  A 76 bp margin on a rolling 20-day window is noise with a calendar attached, which strengthens the
  case for reading the switch at the moment of the buy rather than treating it as a standing state.
- **NEW 2026-09-09 — the check/cycle division of labour paid off.** Both 09-08 intraday checks saw
  XLF fall below its 20-SMA, both said it *"would fail the §3 filter on current prices,"* and both
  **declined to act**, deferring to the cycle. The cycle sold it this morning at $56.90 — within
  $0.08 of where it traded when the close check flagged it. **The no-intraday-rotation rule cost
  nothing here**, which is the first direct evidence either way since the rule was written.
- **NEW 2026-09-10 — the sleeve's dormancy prediction was exactly right, and it re-armed the moment
  slot 1 got cheap.** The 09-09 note predicted the sleeve "only re-opens if slot 1 becomes XLE, XLF
  or TLT." XLE took slot 1 on the next session and a conforming call cost **$295 against a $375.19
  cap** — where the SMH equivalent had cost **$4,262.50 against $379.06**. **Nothing about the signal
  changed; the ticket price did.** The rule of thumb `underlying × 0.07 ≤ 50% of account value` held
  to within a few percent on a third data point. **Before asking "why didn't the sleeve fire," check
  the ticket price, not the signal** — and conversely, expect it to fire whenever slot 1 is cheap.
- **NEW 2026-09-10 — conforming greeks do not make a tradable contract. New pre-trade screen.**
  The 45–90 DTE window held **two** XLE expirations today (Oct 30 at 50 DTE, Nov 20 at 71 DTE), so
  **the one-expiration cliff found on 09-02 and 09-09 is not a permanent property of these chains —
  it depends on where the calendar sits.** Oct 30 was cheaper, shorter and better matched to a
  fast-moving signal, and was **rejected as illiquid: every strike showed 0 open interest, 0 volume,
  and a $0.34 × $4.45 book** on the 0.50Δ strike, with a purely model-derived "mark." [[Risk Rules v2]]
  §1/§4 forbid it, and the round-trip spread would have exceeded any plausible gain. **Add to the
  sleeve checklist: check OI, volume and spread width *before* pricing the greeks.** A fresh
  end-of-month expiry can look perfect on delta and DTE and have never traded.
- **NEW 2026-09-10 — "limit at mid" is not always expressible, and it depends on the $3.00 tick
  cutoff.** These chains tick at **$0.01 below $3.00 and $0.05 above it**. At 9:32 the $66C mid was
  $3.06, which the grid would have forced to $3.05 or $3.10 (neither is mid); by 9:35 it had eased to
  **$2.955**, so **$2.95 was both a valid tick and effectively the mid — and it filled there in 17
  seconds with zero slippage.** When a premium sits just above $3.00, expect to pay or save a tick
  versus mid and say so in the note rather than calling it "mid."
- **NEW 2026-09-10 — the leverage switch was armed, not taken, and it saved real money.** SMH's 20d
  is **+0.24%**, technically arming the SOXL substitution. It did not apply: SMH is slot 2, already
  held, so no slot-2 buy was due and the switch is a **buy-time** rule. **SOXL opened −6.50%.**
  Three consecutive cycles have now recommended codifying this as buy-time rather than leaving it to
  inference, and this is the first one where the inference would have cost money.
- **Next cycle (Fri 2026-09-11, 9:30 ET):**
  1. **SMH is the name at risk, and its failure is expensive in two ways.** It qualified on the 09-09
     close with $8.59 (1.52%) over its 20-SMA but traded **−2.35%** at $560.80 this morning. A close
     near there puts it roughly **$2–5 below** its 20-SMA → fails the §3 trend filter → slot 2 sells.
     **With QQQ also failing there is no third qualifier, so slot 2 goes to cash** and the proceeds
     are unspendable for a day. Re-score from fresh bars; do not assume either outcome.
  2. **Re-read all three sleeve close conditions.** Today they are wide — XLE 20d **+7.19%**, **70 DTE**
     at tomorrow's open — but the binding one is the **slot-1 test**, and XLE has held slot 1 for one
     session. **Note the asymmetry: if SMH fails and XLE holds rank 1, the sleeve is safe.** The
     sleeve dies only if something **outranks XLE**, and nothing is close — rank 3 QQQ is below its
     own trend filter.
  3. **Cash is $2.11 — there is nothing to deploy.** Barring a sale, tomorrow is a hold-or-sell cycle
     only. Do not plan a buy.
  4. **Breadth is at its second-tightest reading of the v3 era: 2 of 8** (only 09-02's single
     qualifier was tighter). **All six failures fail on trend alone** — nothing is disqualified for
     being overbought, the highest RSI is XLE's 68.4. A broad bounce would re-qualify several names
     at once.
  5. **Fri 2026-09-11 is a normal session; the next US market holiday is Thanksgiving, 2026-11-26.**
     Checked against the calendar when writing this plan, not merely left to the skip guard — two
     cycles (09-07, 09-08) mis-stated a date from memory in opposite directions.
