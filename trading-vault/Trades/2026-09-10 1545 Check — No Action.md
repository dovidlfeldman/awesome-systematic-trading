---
tags: [trade, run, no-action]
date: 2026-09-10
slot: "1545"
kind: check
outcome: No Action
---

# 2026-09-10 1545 Check — No Action

| | |
|---|---|
| Ran | 15:45 ET |
| Account | $727.35 (equity $452.24 + options $273.00 + cash $2.11), +11.8% vs $650.54 contributed (−20.0% vs $909.02 if the disputed cash is a deposit) |
| Circuit-breaker | $325 — account at 2.24× ($402.35 headroom) — clear |
| Positions | XLE 1.632641 sh @ $65.5400 basis, mark $65.065 (unrealized −$0.78) · SMH 0.615853 sh @ $578.0600 basis, mark $561.93 (unrealized −$9.93) · 1 XLE Nov 20 $66C @ $2.95, mark $2.73 (unrealized −$22.00) |
| Options sleeve | **held** (71 DTE, 20d +6.61%) |
| Sleeve tests | 20d-return test: **pass** (+6.61%, needs negative to fire) · <21-DTE test: **pass** (71 DTE, floor 21) |
| Settlement guard | not binding — `unsettled_funds` $0.0000; no close was owed |
| **Traded** | **none — no exit condition met** |

Circuit-breaker first, as always: `get_portfolio` returns **$727.35** against a **$325** breaker — **2.24×**, $402.35 of headroom, clear. That is down a hair from 2.25× at 12:30, entirely from the two positions drifting; no cash moved and `unsettled_funds` is $0.0000.

**The sleeve holds, and both tests pass by wide margins.** XLE last traded **$65.065**. Against the close 20 sessions back (08-12, $61.03) that is a 20-day return of **+6.61%** — the test fires only on a *negative* 20-day return, so this is not close. The Nov 20 $66C has **71 DTE** against a 21-day floor, 50 days of slack. Neither condition came near firing, so there was nothing to close and no GFD re-place to make: the only option order today is this morning's buy, filled at 9:35:54, and no close order has ever been placed on this contract.

The contract itself is soft but that is not a close condition. It marks **$2.73** (bid $2.67 / ask $2.79 — $2.73 is exactly mid) against the $2.95 fill, **−$22.00**, or −7.5% on premium, with delta decayed 0.529 → 0.499 as XLE slipped back through the $66 strike. That is first-session drift on a 71-day contract, and [[Risk Rules v2]] §4 sets no stop on premium — the sleeve's only exits are the underlying's 20-day trend, the DTE floor, and the slot-1 test that the 9:30 cycle owns. It is worth stating plainly that a mark-to-market loss is *not* one of them, because this sleeve is 0-for-2 and the temptation to invent a stop mid-run is exactly the judgment substitution the 09-10 cycle note declined to make.

**No buys and no rotation were made — that is a rule of this check, not an outcome.** The only thing that can sell an equity here is a tripped §1 breaker, and it is clear at 2.24×.

What the equity legs did, logged for tomorrow rather than acted on: **XLE −0.38%** on the session and still **$1.54 (2.43%) above its 20-SMA** ($63.52), passing the §3 trend filter comfortably. **SMH −2.15% at $561.93** is the story — it is now **$2.63 (0.47%) below its 20-SMA** ($564.56) and its 20-day return has fallen to **−3.92%**. On current prices it fails §3 and slot 2 sells at tomorrow's cycle. This confirms the 12:30 read (which had it $3.44 below on a −2.09% tape) and the 09-10 forward plan, which named SMH as the name at risk; the close is 15 minutes away and a bounce could still save it, so **re-score from fresh bars tomorrow — do not carry this conclusion forward as decided.** With QQQ also below its 20-SMA there is likely no third qualifier, so a slot-2 sale probably goes to cash.

The asymmetry noted this morning still holds and matters for the sleeve: **if SMH fails and XLE keeps rank 1, the sleeve survives.** The slot-1 test — the binding one, and the one that killed both previous calls — only fires if something *outranks* XLE, and nothing is close.

Settlement guard was checked but never engaged. Worth recording for the next check that *does* face a close: the call and 0.854571 of the XLE shares were opened **today**, so a protective close would have been a same-day round-trip. It would still have been permitted — both were bought with genuinely settled cash (`unsettled_funds` was $0.0000 before and after this morning's fills), so there is no good-faith exposure, and §1 overrides §6 regardless. The §6 constraint bites on selling what was bought with *unsettled* funds, which is not the case here.
