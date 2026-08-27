---
tags: [signal]
date: 2026-08-27
---

# Daily Signals — 2026-08-27 (v3 cycle #8)

Daily bars through 2026-08-26. Rank = 10-day return; qualify = close > 20-SMA and RSI(14) ≤ 75.
Run on the 9:30 ET launchd trigger — second consecutive fully automated cycle.

| Rank | Sym | Close | 10d | 20d | >20-SMA | RSI14 | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---|
| 1 | **GLD** | 421.32 | +4.05% | +13.54% | yes (400.69) | 66.1 | **YES → slot 1 (held)** |
| 2 | **XLE** | 62.43 | +2.29% | +6.45% | yes (60.94) | 61.0 | **YES → slot 2 (held)** |
| 3 | TLT | 83.30 | +1.45% | +0.54% | yes (82.45) | 53.1 | qualifies, rank 3 |
| 4 | XLF | 58.26 | +0.59% | +2.79% | yes (57.73) | 61.4 | qualifies, rank 4 |
| 5 | SPY | 766.08 | −0.83% | +5.02% | no (766.63) | 54.3 | no |
| 6 | IWM | 298.93 | −1.25% | +3.59% | no (299.67) | 51.0 | no |
| 7 | QQQ | 711.37 | −1.70% | +7.50% | no (714.64) | 49.3 | no |
| 8 | SMH | 555.77 | −4.97% | +10.22% | no (566.74) | 45.1 | no |

**No rotation — third straight day on the same book.** GLD and XLE keep ranks 1 and 2 on 10-day
return and both stay well above trend, so the target book is unchanged and rule §5 says hold.

The headline of the day is that **the RSI risk flagged yesterday resolved itself the benign way**.
The 08-26 note warned that GLD at RSI 73.1 was close enough to the ≤75 ceiling to force a rotation
on a strong print. Instead GLD gave back −1.58% ($428.07 → $421.32) and its RSI cooled to **66.1** —
seven points of headroom now, no disqualification risk in sight. That is the blow-off filter working
as designed: it never fired, because the thing it guards against didn't happen. GLD's rank is intact
(+4.05% 10d, still nearly double XLE) and its 20-day trend is the strongest in the universe at
+13.54%.

Underneath, participation narrowed again — the mirror image of yesterday. SPY and IWM both dropped
back below their 20-SMAs (SPY by 55 cents, IWM by 74 cents, both marginal), taking qualifiers from
6 back down to 4: GLD, XLE, TLT, XLF. The index complex is chopping either side of trend on a
day-to-day basis, which is noise, not signal. It does not touch the book — ranks 5 and 6 were never
going to allocate — but it does mean the top-2 is currently the *only* place with genuine positive
10-day momentum, and the bench (TLT +1.45%, XLF +0.59%) is thin.

## Sells

**None.** Both holdings are still their own target slots. Both were fully settled and sellable
(`shares_available_for_sells` = full position, `intraday_quantity` = 0 — yesterday's top-up buys
settled overnight), and neither was bought today, so no GFV constraint applied either way. Nothing
needed selling, so nothing was sold.

## Buys

**None — no capital to deploy.** Settled cash is **$2.01** with `unsettled_funds` = $0.00, which is
exactly the ~$2 buffer the cycle is required to keep. The book went ~100% deployed with yesterday's
top-ups and no proceeds were generated today, so there is nothing to put to work. This is the
intended steady state of a no-rotation day, not a blocked order.

Worth recording explicitly: **the tranche stagger is still collapsed**. Both slots were funded on
the same day (08-26), so the whole book shares one settlement clock. Yesterday's note predicted a
one-day cash gap if a rotation hit today; no rotation came, so the gap never materialized. The A/B
offset still only re-establishes when a single slot rotates on its own.

## Options sleeve — gate open, still priced out

Gate is **open** (slot-1 GLD 20-day return +13.54% > 0) and the sleeve is empty, so the spec would
have it buy. Re-verified with a live quote rather than carried forward on yesterday's number:

GLD Oct 16 $420C — **delta 0.546** (inside 0.50–0.65), **50 DTE** (inside 45–90), OI 7,449,
IV 25.5%, bid/ask $17.00/$17.45 — conforming on every spec except price. Mark **$17.225 →
$1,722.50 per contract** against a premium cap of **$291.62** (50% of $583.25). That is **5.9× the
cap** and **3.0× the entire account**.

Marginally less out of reach than yesterday ($1,890.00 → $1,722.50, tracking GLD's pullback), but
the gap is structural, not a near miss: no 0.50–0.65 delta call on a $421 underlying can cost $291.
Per the **owner decision of 2026-08-25** the delta/DTE spec is not relaxed to fit the account. The
sleeve idles and re-arms on its own once a conforming contract fits — which realistically requires
either a much larger account (~$3,800+ for GLD-class names) or slot 1 rotating to a cheaper
underlying like XLF (~$58) or XLE (~$62). `review_option_order` / `place_option_order` remain
**unexercised** under the desktop allowlist for the fourth cycle running.

## Account at cycle start

**$583.25** (−10.3% vs $650.54 contributed) — equity $581.24, cash $2.01.
Circuit-breaker $325 — **checked first**, account at **1.79×** the breaker. Clear.
Realized to date: **−$64.99**, unchanged (nothing sold). Unrealized ≈ **−$1.40** on a $582.98
basis at the 9:31 ET marks (GLD $420.60, XLE $62.30).

No orders were placed this cycle, so the 9:35 ET open-volatility gate was never binding.
