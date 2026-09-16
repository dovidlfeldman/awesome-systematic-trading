---
tags: [trade, run, no-action]
date: 2026-09-16
slot: "1230"
kind: check
outcome: No Action
---

# 2026-09-16 1230 Check — No Action

| | |
|---|---|
| Ran | 12:30 ET |
| Account | $704.85 (equity $105.53 + options $243.00 + cash $356.32), +8.4% vs $650.54 contributed (−22.5% vs $909.02 if the disputed cash is a deposit) |
| Circuit-breaker | $325 — account at 2.17× ($379.85 headroom) — clear |
| Positions | XLE 1.632641 sh @ $65.54 basis, marked $64.625 (unrealized **−$1.49**) |
| Options sleeve | **held** — 1 XLE Nov 20 $66C, 65 DTE, 20d **+1.48%** |
| Sleeve tests | 20d-return test: **pass** (+1.48%, fires at ≤ $63.68 — **−1.46% away**) · <21-DTE test: **pass** (65 DTE, floor reached 2026-10-30) |
| Settlement guard | not binding (`unsettled_funds` $0.0000; no close attempted) |
| **Traded** | **none — no exit condition met** |

## What was looked at

Breaker first, as always. `get_portfolio` reports **$704.85** against a **$325** breaker — **2.17×**, clear by $379.85. No liquidation condition. The account is down **$16.41** from this morning's $721.26, entirely on marks: nothing was bought or sold by anyone, share count (1.632641 XLE) and contract count (1 Nov 20 $66C) are unchanged from the 9:30 cycle, and cash is still exactly **$356.32**.

**The sleeve held, and for the first time it is not a comfortable hold.** Both close conditions were tested against fresh data:

- **20-day return — pass, but narrowly.** Rolling the window to include today's live bar puts the base at the **08-18 close, $63.68**; XLE at **$64.625** is **+1.48%** over it. The test needs *negative* to fire, so XLE would have to reach **$63.68 — another −1.46%** today. Compare the four prior checks, which needed −4.81%, −4.87%, −5.08% and −3.90%: **this is by a wide margin the closest the trend test has come to firing since the sleeve was armed on 09-10.**
- **DTE — pass, not close.** 2026-11-20 is **65 days** out against a 21-day floor; the floor is not reached until **2026-10-30**, six weeks away. This test has never been the binding one and still isn't.

**Both legs of today's 20d compression push the same way, which is what makes it unusual.** The morning cycle scored **+5.35%** on the settled close. Since then the window rolled off the 08-17 close ($62.58) and picked up 08-18's ($63.68) — **the base rose 1.76%** — *and* **XLE itself fell −1.98%** to $64.625. Previous checks saw one or the other: 09-14 midday was all window, 09-14 close was all price, and each time the other leg partially offset. Today neither offsets. A +5.35% reading became +1.48% in three hours without a single tick of that being noise.

The same move thinned XLE's **§3 cushion from +2.99% to +0.87%** over a 20-SMA of $64.06 (rolled to include today). That is a *rotation* input, and rotation is the 9:30 cycle's call — **logged here, not acted on.** If XLE closes below its 20-SMA it fails §3 tomorrow, and with breadth at 1 of 8 the book would go fully to cash.

**The Nov 66C marks $2.43 against a $2.95 fill — −$52.00**, delta decayed 0.488 → 0.471. That is the sleeve's second-worst mark and a **$61 round trip from yesterday's +$9.00 best-ever mark.** As on 09-10, 09-11, 09-14 and 09-15: **a mark-to-market drawdown is not a close condition**, and no stop was invented mid-run to make it one. The sleeve closes on the two written tests or not at all, and today both passed.

**Live tape inverts this morning's reading a second day running.** XLE **−1.98%** is falling while SPY **+0.37%**, QQQ **+0.82%** and XLF **−0.70%** — the market is up and the book's only name is the one going down. The three names nearest re-qualifying are closing the gap from below at the same time XLE closes it from above.

**No buys and no rotation were made — that is a rule of this check, not an outcome.** The only thing that can sell an equity at 12:30 is a tripped §1 breaker, and the breaker is clear at 2.17×. The settled **$356.32** sitting in cash was not deployed and was never a candidate: opening positions is the 9:30 cycle's job alone. **Nothing traded because neither sleeve test fired and the breaker did not trip** — there was no order this check was permitted to place.

## For the 15:45 check and tomorrow's cycle

- **Watch $63.68 on XLE.** That is today's live 20d trigger. If XLE trades there before the close, the sleeve's trend test fires and the 15:45 check *sells to close* at mid. This is the first time that price has been within a plausible session's move.
- **Watch $64.06 on XLE** — the rolled 20-SMA. A close below it fails §3 and slot 1 sells at tomorrow's 9:30. Cushion is +0.87% and shrinking.
- Note the asymmetry: **the sleeve's own trend test and the equity's §3 test are now within about 1.5% of each other**, so a single bad afternoon could fire the first today and the second tomorrow morning. The 09-04 coupled unwind would be the outcome — this time triggered by XLE's own weakness rather than by another name outranking it, which is exactly the close condition the outstanding sleeve-design question asks for.
