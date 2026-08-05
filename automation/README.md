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

> **⚠️ As shipped, this step does not work. Two fixes are required (2026-08-05).**
>
> **4a. Trust the workspace.** Until you do, Claude Code discards *every* allowlist entry
> and logs `Ignoring 26 permissions.allow entries from .claude/settings.json: this
> workspace has not been trusted`. Fix by running `claude` interactively once in the repo
> and accepting the trust dialog.
>
> **4b. Fix the MCP prefix.** The shipped entries are named `mcp__Robinhood__*`, but the
> connector actually exposes `mcp__claude_ai_Robinhood__*`. Matching is exact, so all 17
> broker entries are dead strings even after 4a. Rewrite them:
>
> ```bash
> python3 - <<'EOF'
> import json
> p = ".claude/settings.json"
> d = json.load(open(p))
> a = d["permissions"]["allow"]
> a += [e.replace("mcp__Robinhood__", "mcp__claude_ai_Robinhood__")
>       for e in a if e.startswith("mcp__Robinhood__")]
> d["permissions"]["allow"] = sorted(set(a))
> json.dump(d, open(p, "w"), indent=2)
> EOF
> ```
>
> Confirm the connector's real prefix with `/mcp` in an interactive session before
> trusting the rewrite — if the connector is renamed, the prefix moves with it.

**How to tell a run actually worked:** a healthy log ends with `Cycle finished
<timestamp>`. The runner uses `set -e`, so a nonzero `claude -p` exit kills the script
before that line — a log with no trailer, or one containing "Ignoring N permissions", is a
failed run even though nothing looks obviously wrong.

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

- Book at handoff: XLF 3.051443 sh, SPY 0.252006 sh, ~$215 cash; sleeve empty.
- The sleeve block was **not** an options-specific approval gate, as earlier notes assumed —
  it was the whole allowlist failing to apply. See the warning in step 4; a post-close run
  on 2026-08-05 confirmed even read-only `get_portfolio` was denied.
- Realized P&L to date −$65.38; account ~$587 vs $650.54 contributed; breaker at $325.
- The cloud session's in-session scheduler is retired once this is live — don't run both.
- Kill switch: remove the cron/Task Scheduler entry, or revoke the Robinhood connector.
