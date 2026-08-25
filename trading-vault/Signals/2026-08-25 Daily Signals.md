---
tags: [signal]
date: 2026-08-25
---

# Daily Signals — 2026-08-25 (v3 cycle #6)

Daily bars through 2026-08-24. Rank = 10-day return; qualify = close > 20-SMA and RSI(14) ≤ 75.
Run on owner "Run" ping at ~12:00 PM ET.

> ⚠️ **This is the first cycle in 20 calendar days (14 trading days).** The previous cycle was
> 2026-08-05. Neither the cloud runner nor the desktop runner fired in between — `get_equity_orders`
> and `get_option_orders` show **zero** orders between 2026-08-05 and today. The book sat unmanaged
> on a stale XLF/SPY target and $214.63 of settled cash sat undeployed the whole time. See
> [[2026-08-25 Automation Gap]].

| Rank | Sym | Close | 10d | 20d | >20-SMA | RSI14 | Qualifies |
|---:|---|---:|---:|---:|---:|---:|---|
| 1 | **GLD** | 426.69 | +6.00% | +13.90% | yes (395.24) | 72.4 | **YES → slot 1 (bought)** |
| 2 | **XLE** | 63.11 | +4.87% | +8.14% | yes (60.52) | 67.4 | **YES → slot 2 (bought)** |
| 3 | XLF | 58.22 | +0.71% | +2.36% | yes (57.62) | 61.4 | qualifies, rank 3 — **sold** |
| 4 | TLT | 82.56 | +0.61% | −1.42% | yes (82.47) | 47.4 | qualifies, rank 4 |
| 5 | IWM | 297.97 | −0.67% | +1.73% | no (298.86) | 49.2 | no |
| 6 | SPY | 763.47 | −1.24% | +3.30% | no (763.55) | 52.1 | no — **sold** |
| 7 | QQQ | 706.32 | −2.02% | +3.55% | no (710.40) | 46.3 | no |
| 8 | SMH | 546.80 | −3.97% | −0.32% | no (562.85) | 41.6 | no |

Complete regime flip from 08-05. The broad rally that had 7 of 8 above trend has rolled over: the
four index/growth names (SPY, QQQ, IWM, SMH) are **all** now below their 20-SMA. Leadership moved
to hard assets and energy — GLD +13.9% over 20 days, XLE +8.1%. Both prior holdings dropped out of
the top 2, so this is a full two-slot rotation.

SPY closed at 763.47 against a 763.55 SMA — a disqualification by 8 cents. It is a genuine
knife-edge, but the rule is the rule and SPY was rank 6 on 10-day return regardless, so it would
not have held a slot either way.

## Executed

- **SELL XLF** 3.051443 sh @ $58.1642 → **+$2.48** realized (basis $57.35, held 21 days).
- **SELL SPY** 0.252006 sh @ $765.4656 → **−$2.10** realized (basis $773.79, held 20 days).
- **BUY GLD** $106.31 → 0.249121 sh @ $426.74 (slot 1).
- **BUY XLE** $106.31 → 1.697789 sh @ $62.6167 (slot 2).

Both buys used only the $214.63 that was already settled. Today's $370.38 of sale proceeds are
unsettled and were **not** touched — no GFV risk. $2.01 cash buffer left.

Note the stagger is currently collapsed: both slots were bought on the same day, so both tranches
now share one settlement clock. This is the correct outcome given both holdings failed
simultaneously, but it means tomorrow the book is fully committed and only the $370.38 settling
overnight is available. The A/B offset will re-establish naturally the next time only one slot rotates.

## Options sleeve — structurally unavailable on GLD

Gate is **open** (slot-1 GLD 20-day return +13.90% > 0). The read-side options tools
(`get_option_chains`, `get_option_instruments`, `get_option_quotes`) all worked this cycle with no
approval prompt, so the permission problem from [[2026-08-05 Cycle Skipped (after close)]] is at
least partly fixed. **`review_option_order`/`place_option_order` were not exercised today** — no
affordable contract existed to review — so they remain unproven. The sleeve could not arm anyway,
for a new and more permanent reason:

GLD Oct 16 $425C — 0.556 delta, 52 DTE, OI 11,055, IV 26.6% — is **fully conforming** on every
spec except price. Mark **$19.08 → $1,907.50 per contract**. That is:

- **8.9×** the $214.63 settled cash available, and
- **6.5×** the $292.55 premium cap (50% of $585.01 account value), and
- **3.3×** the entire account.

There is no conforming GLD call this account can buy. A 0.50–0.65 delta contract on a $427
underlying costs roughly 4.5% of notional ≈ $1,900, and no strike inside the delta band is
materially cheaper. This is not a temporary block: **whenever GLD holds slot 1, the sleeve is
dead by arithmetic.** The sleeve can only engage when slot 1 is a low-priced underlying — XLF
(~$58 → ~$180 call) or XLE (~$63 → ~$200 call) work; SPY ($765), QQQ ($706), SMH ($547) and GLD
($427) do not.

Worth an owner decision: the sleeve as specified is only reachable on 2 of the 8 universe names
at this account size. Options are (a) accept that it idles most of the time, (b) allow lower-delta
/ shorter-DTE contracts on expensive underlyings, which changes the risk profile materially, or
(c) drop the sleeve until the account is larger. **No action taken — flagging for the owner.**

## Account at cycle start

$585.09 (−10.1% vs $650.54 contributed). Realized to date going in: −$65.38.
Circuit-breaker $325 — checked first, not close (account is 1.80× the breaker).
