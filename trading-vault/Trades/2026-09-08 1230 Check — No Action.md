---
tags: [trade, run, no-action]
date: 2026-09-08
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-08 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $762.34 (equity $709.21 + cash $53.13), +17.2% vs $650.54 contributed |
| Circuit-breaker | $325 — account at 2.35× ($437.34 headroom) — clear |
| Positions | SMH 0.615853 sh @ $578.06 basis, marked $575.17 (unrealized **−$1.78**) · XLF 6.168808 sh @ $57.76 basis, marked $57.55 (unrealized **−$1.30**) |
| Options sleeve | **empty** — no entry this morning; SMH's 20d was −2.69% against a gate that needs positive |
| Sleeve tests | 20d-return test: **n-a** · <21-DTE test: **n-a** (no contract held) |
| Settlement guard | not binding — nothing was sold, so no GFV question arose |
| **Traded** | **none — no exit condition met** |

## What was looked at

**Circuit-breaker first, before anything else.** `get_portfolio` returns total account value
**$762.34** — equity $709.21, options $0, cash $53.13. The breaker sits at **$325** (50% of the
$650.54 contributed capital of record), so the account is at **2.35×** with **$437.34** of
headroom. Clear, and not close. Against the $454.51 breaker the still-unconfirmed +$258.48
deposit would imply, the account is at **1.68×** — clear on that reading too, so the open
denominator question does not change the answer.

**Market state verified before running.** 12:30:18 ET, Tuesday. Live prints across the universe
timestamped 16:30:23Z — a real session, unlike the three holiday skips yesterday. Past the 9:35
gate, well before the 4:00 close, so the check ran rather than skipping.

**Options sleeve: nothing to manage.** The sleeve is **empty** — this morning's cycle declined to
arm it because slot 1 (SMH) has a **−2.69% 20-day return** and the entry gate requires positive.
`get_option_positions` confirms zero open contracts against the broker, so both protective-close
tests are **n-a**: there is no underlying whose 20-day return could turn negative and no contract
that could fall through the 21-DTE floor. This is the 6th consecutive check with an empty sleeve
(three of them holiday skips). Nothing was close to firing here because there was nothing to fire on.

**Equities: no action, by rule.** Both legs are held exactly as the 9:30 rotation left them — SMH
0.615853 sh and XLF 6.168808 sh, unchanged share counts, no orders placed by anyone since the fills.
The book is down **−$3.08** combined on $712.31 of cost, which is entry slippage and a half-session
of drift, nowhere near anything that matters. **No buys and no rotation were made — that is a rule
of this check, not an outcome:** equity rotation is the 9:30 cycle's decision alone, and the only
thing that sells an equity at 12:30 is a tripped §1 breaker, which did not happen.

**What came close to firing — for tomorrow's cycle, not for this one.** The two legs have moved in
opposite directions since the open:

- **SMH +1.44%** on the day ($567.01 → $575.17). Home flagged this morning that SMH needed to fall
  only ~$1.60 (0.3%) to lose the 20-SMA that qualified it from rank 8. It went the other way: SMH is
  now **$9.46 (1.67%) above** a rolling 20-SMA of ~$565.71, versus $1.59 above at the 09-04 close.
  The slot-1 thesis is less fragile at midday than it was at 9:36. Its 20-day return has improved
  from −2.69% to **−1.29%** on the same 08-07 base — still negative, so the sleeve gate would still
  refuse, but the gap is closing.
- **XLF −0.95%** on the day ($58.10 → $57.55), and this is the one to watch. XLF qualified as the
  **thinnest name in the book** — $0.236 (0.41%) above its 20-SMA on the 09-04 close. At $57.55 it is
  now roughly **$0.30 below** a 20-SMA of ~$57.85. **On current prices XLF fails the §3 uptrend
  filter and would not qualify for either slot.** That is a re-rank input, and re-ranking is exactly
  what this check is forbidden to do — so it is logged here and left for the 9:30 cycle on Wed
  2026-09-09, which will score it on a settled close rather than a midday quote. A leg can lose its
  20-SMA at noon and reclaim it by 4:00; a check that acted on that would be doing rotation by
  another name.

**Settlement, checked rather than assumed.** `get_accounts` reports `unsettled_funds` **$48.04** —
the SPY proceeds from this morning's sale, settling Wed 09-09 — with buying power $53.13. This
matches Home's figure exactly, so the record is accurate for once. It did not bind on anything: no
position was sold, so no good-faith question arose, and no buy was contemplated because this check
cannot buy. Cash moved $53.10 → $53.13 with no orders; three cents, not worth chasing.

**Nothing traded.** Breaker clear by a wide margin, sleeve empty so neither protective test can
apply, and equity exits are out of scope for an intraday check. There was no exit condition to meet.

## Forward

Wed 2026-09-09, 9:30 ET cycle — **XLF's 20-SMA is the live question.** It entered today the
thinnest qualifier by gap and spent the session below the line; if it closes there it drops out of
the qualifier set entirely and slot 2 is re-decided one day after being topped up. SMH strengthened
its hold on slot 1 but its 20-day return is still negative, so the sleeve stays shut on its own gate
unless that flips. The $48.04 settles Wednesday — a top-up, not a decision.
