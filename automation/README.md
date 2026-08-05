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

Test before scheduling — run one full cycle interactively and approve anything that prompts:

```bash
./automation/run-daily-cycle.sh && tail -50 automation/logs/cycle-$(date +%Y-%m-%d).log
```

### 5. Schedule it

The cycle should fire **9:35–10:00 AM ET, weekdays**. Adjust the hour if your machine is
not in Eastern time (the script itself refuses to run on weekends as a backstop).

**macOS / Linux (cron):**
```bash
crontab -e
# 9:37 AM America/New_York — adjust the hour for your machine's timezone:
37 9 * * 1-5 /full/path/to/awesome-systematic-trading/automation/run-daily-cycle.sh
```
macOS: also disable sleep at that hour (System Settings → Energy) or use `pmset repeat wake`.

**Windows (Task Scheduler):**
Create a task, weekdays 9:37 AM, action:
`wsl.exe /home/<you>/awesome-systematic-trading/automation/run-daily-cycle.sh`
(run the whole setup inside WSL; native PowerShell works too, but the script is bash).
Enable "Wake the computer to run this task."

### 6. Keep the machine on

The single failure mode left is the desktop being off/asleep at 9:37. If a run is missed,
nothing bad happens — the book just stays as-is until the next run or a manual
`./automation/run-daily-cycle.sh`.

## What each run does

See `daily-cycle-prompt.md` (the canonical instructions, versioned with the strategy):
circuit-breaker check → daily signals → rule-based sells (including sleeve exits) →
rule-based buys (sleeve first, then equity slots) → vault log → commit + push.

## Handoff notes (from the cloud sessions, 2026-08-05)

- Book at handoff: XLF 3.051443 sh, SPY 0.252006 sh, ~$215 cash; sleeve empty (options
  permission was gated in the cloud environment — step 4 fixes that locally).
- Realized P&L to date −$65.38; account ~$587 vs $650.54 contributed; breaker at $325.
- The cloud session's in-session scheduler is retired once this is live — don't run both.
- Kill switch: remove the cron/Task Scheduler entry, or revoke the Robinhood connector.
