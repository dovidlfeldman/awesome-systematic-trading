# Running the daily trading cycle on your own machine

This folder makes the v3 daily cycle self-hosting: your desktop runs Claude Code headlessly
every weekday morning, trades the Agentic account per the vault rules, logs everything to
`trading-vault/`, and pushes. No manual "Run" pings.

## One-time setup

### 1. Install Claude Code and sign in

- Install: https://claude.com/claude-code (CLI; macOS/Windows/Linux)
- Run `claude` once in a terminal and sign in with the **same claude.ai account** that has
  the Robinhood connector (dovidlfeldman@gmail.com).

### 2. Clone the repo and check out the working branch

```bash
git clone https://github.com/dovidlfeldman/awesome-systematic-trading.git
cd awesome-systematic-trading
git checkout claude/robinhood-agentic-trading-thzmpp
```

(You'll need push access via `gh auth login` or an SSH key so the vault commits can push.)

### 3. Connect the Robinhood MCP server

The Robinhood tools come from the claude.ai Robinhood connector. In an **interactive**
`claude` session inside the repo, run `/mcp` and confirm Robinhood is listed and
authenticated. If it isn't, add the connector in your claude.ai settings
(Settings → Connectors → Robinhood) and re-check `/mcp`. Complete any OAuth prompt once;
headless runs reuse the stored credentials.

### 4. Pre-approve the tools headless runs need

Headless runs cannot answer permission prompts. This repo ships
`.claude/settings.json` with an allowlist covering the Robinhood equity **and options**
tools, git, and file edits — review it, then keep or trim it. Anything not allowlisted
will fail silently in headless mode (this is what kept blocking the options sleeve in the
cloud sessions).

> **✅ Resolved 2026-08-25 (commit `c974de7`).** Two defects that had silently disabled the
> allowlist are now fixed and confirmed working (cycle #6 placed four real orders headlessly
> with no prompt):
>
> - **Workspace trust.** `hasTrustDialogAccepted: true` is set for this repo in
>   `~/.claude.json` — otherwise Claude Code discards *every* allowlist entry and logs
>   `Ignoring N permissions.allow entries ... workspace has not been trusted`.
> - **MCP prefix.** The allowlist entries now use the connector's real prefix
>   `mcp__claude_ai_Robinhood__*` (they shipped as `mcp__Robinhood__*`, which matched
>   nothing). If you re-clone on a new machine, re-apply both: accept the trust dialog once
>   via interactive `claude`, and confirm the prefix with `/mcp`.

**How to tell a run actually worked:** a healthy log ends with `Cycle finished
<timestamp>`. The runner uses `set -e`, so a nonzero `claude -p` exit kills the script
before that line — a log with no trailer, or one containing "Ignoring N permissions", is a
failed run even though nothing looks obviously wrong.

Test before scheduling — run one full cycle interactively and approve anything that prompts:

```bash
./automation/run-daily-cycle.sh && tail -50 automation/logs/cycle-$(date +%Y-%m-%d).log
```

### 5. Schedule it (macOS launchd — installed 2026-08-25)

Three `launchd` agents live in `~/Library/LaunchAgents/`, all weekday-only, firing on the
machine's local wall-clock. **This machine is `America/New_York`, so the times below are ET
and DST is tracked automatically.** If you deploy on a machine in another timezone, edit the
`Hour` values in each plist to the local equivalent of the ET target.

| Time (ET) | Label (`com.dfeldman.trading.*`) | Script | Scope |
|---|---|---|---|
| 9:30 AM | `daily-cycle` | `run-daily-cycle.sh` | Full rotation |
| 12:30 PM | `market-check-midday` | `run-market-check.sh` | Risk exits only |
| 3:45 PM | `market-check-close` | `run-market-check.sh` | Risk exits only |

Load / reload after editing a plist (idempotent):
```bash
UID_NUM=$(id -u)
for L in daily-cycle market-check-midday market-check-close; do
  launchctl bootout  "gui/$UID_NUM/com.dfeldman.trading.$L" 2>/dev/null || true
  launchctl bootstrap "gui/$UID_NUM" "$HOME/Library/LaunchAgents/com.dfeldman.trading.$L.plist"
done
launchctl list | grep dfeldman.trading      # confirm all three are loaded
```

**Kill switch:** `launchctl bootout gui/$(id -u)/com.dfeldman.trading.<label>` for one agent
(or all three), or revoke the Robinhood connector in claude.ai.

### 6. Keep the machine on

The remaining failure mode is the desktop being off/asleep at the fire time. launchd runs a
missed `StartCalendarInterval` job **once on wake**, so a short sleep is tolerated; a machine
off all day skips that run (the book just holds until the next run or a manual invocation).
For reliability, disable sleep during market hours (System Settings → Energy) or `pmset repeat wake`.

## What each run does

**Full cycle** (`daily-cycle-prompt.md`, 9:30 ET): circuit-breaker check → daily signals →
rule-based sells (including sleeve exits) → rule-based buys (sleeve first, then equity slots)
→ vault log → commit + push.

**Intraday risk check** (`market-check-prompt.md`, 12:30 & 3:45 ET): circuit-breaker →
protective options-sleeve close only (underlying 20-day return negative, or contract <21 DTE)
→ log + push. **Never buys or rotates** — that is the 9:30 cycle's job alone. Logs to
`automation/logs/check-<date>-<HHMM>.log`; check notes land in `trading-vault/Checks/`.

## Vault mirror to the personal Obsidian vault

Every run ends by calling `mirror-trades.sh`, which one-way-copies the whole vault —
`00 - Home.md` plus `Trades/`, `Signals/`, `Checks/`, `Journal/`, `Strategy/` — into
`~/TradingVaultMirror/`, preserving directory structure (override the destination with
`OBSIDIAN_TRADING_DIR`). `~/Documents/Obsidian Vault/Trading` is a **symlink** to that path,
so the notes still appear inside the Obsidian vault. Only `*.md` is copied; the repo vault's own
`.obsidian/` config is skipped. The repo vault stays the git source of truth; the
personal-vault copy is a read-only mirror (no `--delete`, so annotations you add there are
never removed).

> **⚠️ Why the destination is outside `~/Documents`.** `~/Documents` is TCC-protected, and
> launchd-spawned processes have no access to it. Writing there failed with
> `rsync: ... Trading/: open: Operation not permitted` on every *scheduled* run, while manual
> runs from Terminal succeeded (Terminal has its own grant) — which is how it went unnoticed
> from 2026-08-25 to 2026-08-26. Granting Full Disk Access to `/bin/bash` is the usual
> workaround but is not practical on macOS 26: the picker hides `/bin` and refuses
> SIP-protected system binaries. So the mirror writes to `~/TradingVaultMirror` instead
> (home root is not TCC-protected) and the vault reaches it through a symlink. **No Full Disk
> Access grant is required, and none should be added.** Verified 2026-08-26 with a throwaway
> LaunchAgent running `mirror-trades.sh`: exit 0, empty stderr.
>
> If you ever repoint `OBSIDIAN_TRADING_DIR`, keep it out of `~/Documents`, `~/Desktop`, and
> `~/Downloads`, or the scheduled runs will start failing again.

## Liveness — how to tell it's actually running

Silent failure is the historical enemy. To audit:
- `automation/logs/launchd-*.{out,err}` — launchd's own capture; an `.err` with content or a
  missing `.out` for a scheduled day means the wrapper itself failed to start.
- `automation/logs/cycle-<date>.log` must end with `Cycle finished <ts>`;
  `check-<date>-<HHMM>.log` must end with `Market check finished <ts>`. No trailer = either
  the `claude -p` call or the vault mirror died (the scripts use `set -e`, and the mirror is
  deliberately *not* guarded with `|| true` — a run that trades but never reaches the vault
  must not look healthy).
- A log containing `Ignoring N permissions` means the trust/prefix fix regressed (see step 4).

## Handoff notes (from the cloud sessions, 2026-08-05)

- Book at handoff: XLF 3.051443 sh, SPY 0.252006 sh, ~$215 cash; sleeve empty.
- The sleeve block was **not** an options-specific approval gate, as earlier notes assumed —
  it was the whole allowlist failing to apply. See the warning in step 4; a post-close run
  on 2026-08-05 confirmed even read-only `get_portfolio` was denied.
- Realized P&L to date −$65.38; account ~$587 vs $650.54 contributed; breaker at $325.
- The cloud session's in-session scheduler is retired once this is live — don't run both.
- Kill switch: remove the cron/Task Scheduler entry, or revoke the Robinhood connector.
