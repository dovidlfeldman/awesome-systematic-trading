---
tags: [trade, run, no-action]
date: 2026-09-09
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-09 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $756.59 (equity $403.44 + cash $353.15), +16.3% vs $650.54 contributed |
| Circuit-breaker | $325 — account at 2.33× ($431.59 headroom) — clear |
| Positions | SMH 0.615853 sh @ $572.905 (unrealized −$3.17) · XLE 0.778070 sh @ $65.26 (unrealized −$0.22) |
| Options sleeve | empty |
| Sleeve tests | 20d-return test: n-a · <21-DTE test: n-a |
| Settlement guard | not binding |
| **Traded** | **none — no exit condition met** |

Breaker first, as always: `get_portfolio` returns $756.59 against a $325 breaker — **2.33×, $431.59 of
headroom**, nowhere near a trip. (Against the $454.51 breaker the disputed +$258.48 deposit would
imply, still clear at 1.66×.) No liquidation, so §1 never reached the point of overriding anything.

**The options sleeve is empty, so both protective-close tests are n-a** — the eighth consecutive
check with nothing in the sleeve to manage. `get_option_positions` returns zero open contracts;
this morning's cycle could not arm it because the only conforming SMH contract costs $4,262.50
against a $379.06 §4 cap. There is no position to close, so no 20-day-return read and no DTE read
were owed on the sleeve.

**No equity action, by rule.** §3 makes rotation the 9:30 cycle's decision alone, and the only thing
that sells an equity at a check is a tripped §1 breaker, which did not happen. **No buys and no
rotation were made — that is a rule of this check, not an outcome.** Confirmed against the broker
that the only orders on the book today are the two the 9:30 cycle placed (XLF sell at $56.9015,
XLE buy at $65.5468, both filled at 9:35); nothing has been placed since by anyone.

**Settlement guard not binding.** `unsettled_funds` reads **$351.02** of $353.15 cash — today's XLF
proceeds, settling 09-10 — so only $2.13 is genuinely settled. It blocked nothing here because no
sale was contemplated: the sleeve is empty and equities are out of scope. Worth recording that
XLE's $51 was bought this morning out of *settled* cash, so even a §1 liquidation would not have
created a good-faith violation on it.

**What came closest to mattering — and it is a gate, not an exit. SMH's 20-day return has decayed
from +0.76% at this morning's scoring to roughly 0.00% (−0.004%) by lunchtime**, and almost none of
that is price: SMH is only −0.14% on the day at $572.905. The window rolled off the 08-10 close of
$569.41 and picked up 08-11's $572.93, which is $3.52 higher — **the reference base rose and the
gate closed itself**. Both gates that opened this morning for the first time (the SOXL leverage
switch and the sleeve's trend filter) would read shut on current prices. This changes nothing today
— the sleeve is empty so there is no position for that filter to close, the leverage switch is a
buy-time rule with no buy due, and equity slot selection never consults the 20-day number at all.
It is logged because Home's forward plan flagged "one red session flips both shut" as the risk;
in the event it took no red session, just the calendar.

The book itself is quiet and split the same way it did yesterday: **XLE +0.76% on the day at $65.26,
now $2.16 (3.42%) above its 20-SMA of $63.10 and +7.11% over 20 days — still the strongest 4-week
trend in the universe.** It is nonetheless *below* its own fill: the cycle bought at $65.5468 near
the morning high, so the $51 tranche marks −$0.22. **SMH is $7.27 (1.29%) above its 20-SMA of
$565.64**, comfortably clear of the §3 trend filter despite the flat tape. Neither name is anywhere
near disqualification on the trend test that took XLF out this morning.

Two things noted for tomorrow's cycle rather than acted on here. **XLF, sold at $56.9015 at 9:35, now
trades $57.1464 — up $0.245 (+0.43%) since the exit**; the trend-filter sell has cost about 43 bp of
opportunity on the day so far, recorded honestly, and it remains the right call under §3 since XLF
sits below its 20-SMA either way. And **QQQ, the marginal qualifier at $0.975 over its 20-SMA this
morning, is −0.45% at $715.125** — if it closes here it likely fails, taking the qualifier count from
3 to 2 and leaving no spare name behind the current book.
