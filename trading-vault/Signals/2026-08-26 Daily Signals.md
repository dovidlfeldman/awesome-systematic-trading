---
tags: [signal]
date: 2026-08-26
---

# Daily Signals — 2026-08-26 (v3 cycle #7)

Daily bars through 2026-08-25. Rank = 10-day return; qualify = close > 20-SMA and RSI(14) ≤ 75.
Run on the 9:30 ET launchd trigger — **the first fully automated cycle** (see [[2026-08-25 Automation Gap]]).
Orders held until 9:35 ET per the cycle's open-volatility gate.

| Rank | Sym | Close | 10d | 20d | >20-SMA | RSI14 | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---|
| 1 | **GLD** | 428.07 | +6.76% | +15.89% | yes (398.18) | 73.1 | **YES → slot 1 (held + topped up)** |
| 2 | **XLE** | 62.06 | +1.85% | +7.80% | yes (60.75) | 59.4 | **YES → slot 2 (held + topped up)** |
| 3 | TLT | 83.47 | +1.56% | −0.91% | yes (82.43) | 54.3 | qualifies, rank 3 |
| 4 | XLF | 58.31 | +0.88% | +1.23% | yes (57.65) | 62.0 | qualifies, rank 4 |
| 5 | IWM | 299.23 | −0.58% | +2.00% | yes (299.15) | 51.3 | qualifies, rank 5 |
| 6 | SPY | 765.91 | −0.60% | +3.38% | yes (764.80) | 54.2 | qualifies, rank 6 |
| 7 | QQQ | 710.72 | −1.08% | +5.22% | no (712.16) | 49.0 | no |
| 8 | SMH | 555.82 | −2.99% | +4.95% | no (564.16) | 45.1 | no |

**No rotation.** The 08-25 regime call held for a second day: GLD and XLE remain the only two names
with positive 10-day momentum, and both stay comfortably above trend. GLD's lead widened
(+6.76% 10d, +15.89% 20d) and its RSI at 73.1 is still inside the ≤75 blow-off filter — close
enough to the ceiling to be worth watching, but not a disqualification.

Underneath, the tape repaired itself: IWM and SPY both climbed back above their 20-SMAs (SPY by
$1.11, reversing the 8-cent disqualification from 08-25), so 6 of 8 names now qualify versus 4
yesterday. None of that matters for the book — qualifying is necessary but the top-2 rank is what
allocates, and the index names are still ranks 5 and 6 on 10-day return. Broadening participation
with GLD/XLE still leading is a healthy configuration for the current target book.

## Sells

**None.** Both holdings are still their own target slots — rule §5 says hold, no churn, no
settlement clock burned. Neither position was bought today at decision time, both were fully
settled and sellable, and neither was sold because neither needed to be.

## Buys — deploying the settled rotation proceeds

Yesterday's XLF/SPY proceeds ($370.38) settled overnight: `unsettled_funds` = **$0.00** and
buying power = **$372.39**, all of it settled. Both target slots were held but badly underfunded —
$106.31 apiece against a book that should be ~100% deployed — because yesterday's rotation could
only fund the buys from the $214.63 that happened to be settled at the time. Today closes that gap.

Remaining cash was split into two roughly equal tranches, $2.01 held back as buffer:

- **BUY GLD** $185.19 → 0.437465 sh @ $423.325 (slot 1 top-up).
- **BUY XLE** $185.19 → 3.002086 sh @ $61.6871 (slot 2 top-up).

Both filled instantly at the inside market, zero fees. Both used **settled cash only** — no GFV
exposure. Review returned no broker alerts on either order.

Resulting book: GLD 0.686586 sh @ $424.56 avg ($291.51 basis), XLE 4.699875 sh @ $62.02 avg
($291.50 basis). Equity value $580.16, cash $2.01, total **$582.17** — fully deployed, two slots
at almost exactly equal weight.

Both slots now carry intraday quantity, so the **stagger stays collapsed** and the entire book
shares one settlement clock. Nothing is sellable-and-redeployable until these settle. If tomorrow's
signal calls for a rotation, the sells can be placed (the shares are owned outright, not bought
with unsettled funds — no GFV), but the proceeds will not be spendable until T+1. The A/B offset
still only re-establishes when a single slot rotates on its own.

## Options sleeve — still dead by arithmetic on GLD

Gate is **open** (slot-1 GLD 20-day return +15.89% > 0) and the sleeve is empty, so the spec would
have it buy. It cannot, for the same structural reason recorded on 08-25 — re-verified today with a
live quote rather than assumed:

GLD Oct 16 $420C — **delta 0.573** (in the 0.50–0.65 band), **51 DTE** (in the 45–90 band),
OI 8,306, IV 25.5% — is fully conforming on every spec except price. Mark **$18.90 → $1,890.00
per contract**, against a premium cap of **$291.09** (50% of $582.19). That is **6.5× the cap** and
**3.2× the entire account**.

Per the **owner decision of 2026-08-25**, the delta/DTE spec is *not* relaxed to fit the account —
the sleeve idles instead and re-arms on its own once a conforming contract fits. That remains the
right call and no action was taken. `review_option_order` / `place_option_order` are therefore
**still unexercised** under the desktop allowlist; nothing affordable has come up to prove them.

Note the sleeve got further out of reach today, not closer: the cap fell with the account while
GLD held its bid. It only becomes reachable if slot 1 rotates to XLF (~$58) or XLE (~$62).

## Account at cycle start

$582.19 (−10.5% vs $650.54 contributed). Realized to date going in: **−$64.99** — unchanged by
this cycle, since nothing was sold.
Circuit-breaker $325 — **checked first**, account at **1.79×** the breaker. Clear.
