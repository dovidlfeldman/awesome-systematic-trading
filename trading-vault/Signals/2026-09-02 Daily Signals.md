---
tags: [signal, daily]
date: 2026-09-02
cycle: 11
---

# 2026-09-02 Daily Signals — v3 cycle #11

Computed 9:31 ET from 85 daily bars (2026-05-01 → **2026-09-01 close**, split-adjusted, regular
hours). Rules: [[Staggered Daily Swing Rotation v3]] §§2–4 — rank by trailing 10-day return,
qualify on close > 20-day SMA **and** RSI(14) ≤ 75 (Wilder), target book = top 2 qualifiers.

Run note: [[2026-09-02 0930 Cycle — Options Sleeve Armed (XLE Nov 65C)]].

## Signal table

| Rank | Symbol | Close (09-01) | 10d ret | 20d ret | 20-SMA | > SMA | RSI(14) | Qualifies |
|---:|---|---:|---:|---:|---:|:---:|---:|:---:|
| 1 | **XLE** | $64.77 | **+1.71%** | **+10.68%** | $61.8305 | ✅ | 70.5 | ✅ |
| 2 | TLT | $81.87 | +0.26% | −1.15% | $82.4710 | ❌ | 41.7 | ❌ |
| 3 | GLD | $396.75 | −0.45% | +6.04% | $407.7940 | ❌ | 46.0 | ❌ |
| 4 | SPY | $761.78 | −0.74% | −1.24% | $769.2075 | ❌ | 48.6 | ❌ |
| 5 | XLF | $57.20 | −1.11% | −1.17% | $57.8185 | ❌ | 47.8 | ❌ |
| 6 | QQQ | $707.64 | −1.38% | −2.24% | $717.9660 | ❌ | 46.6 | ❌ |
| 7 | IWM | $290.57 | −3.22% | −3.69% | $299.5840 | ❌ | 37.9 | ❌ |
| 8 | SMH | $545.22 | −4.31% | −5.30% | $568.1085 | ❌ | 42.8 | ❌ |

**Qualifiers:** XLE — **1 of 8** (down from 3 last cycle, 5 the cycle before).
**Target book:** slot 1 **XLE**, slot 2 **cash** (§4: fewer than 2 qualifiers → the unfilled slot's
tranche sits in cash). Held book was XLE + cash → **no rotation owed, no sells, no equity buys.**

## Read

**The bench didn't just thin — it emptied. XLE is the entire equity opportunity set.**

- **TLT failed, exactly as yesterday's note said it would.** It won slot 2 on 08-31 by
  **$0.0015** over its 20-SMA; [[2026-09-01 Daily Signals]] flagged that it was already trading
  $0.54 *below* that line intraday and "very likely fails the filter it passed last night." It
  closed $81.87 against a 20-SMA of **$82.4710** — a miss of **$0.60**, not a rounding error — and
  its 20-day return flipped negative (+0.40% → **−1.15%**). The knife-edge resolved the wrong way
  within one session.
- **The settled-cash rule paid for itself this once.** [[Risk Rules v2]] §6 blocked the TLT buy
  yesterday because the GLD proceeds were unsettled. Had the account bought TLT at ~$81.98, it
  would be selling it this morning for a small loss plus two spreads, having burned a settlement
  cycle to hold a name for one day. The T+1 policy acted as an accidental one-day confirmation
  lag and it was right. **This does not resolve the §6 question raised yesterday** — one favorable
  draw is not evidence a rule is correct, and the same lag also cost a day of XLE call exposure.
  It is a data point for the owner's decision, not the decision.
- **GLD kept falling and has now lost its own trend filter.** $396.75 is **−7.3% from the 08-25
  high of $428.07** and $11.04 below its 20-SMA. The 09-01 exit at $399.3303 realized −$19.97;
  holding to this close would have cost roughly $2.66 more on the same 1.029288 shares. The
  rotation was right, if only barely early enough.
- **XLE is now stronger on every axis and is the only name above trend.** +1.71% over 10 days,
  **+10.68% over 20**, and $2.94 clear of its 20-SMA. Its RSI rose 67.5 → **70.5** — still under
  the 75 cap, but the headroom is down to 4.5 points, and a further sharp rally would disqualify
  the one name holding the book up. That is the single most consequential number in this table.
- **Seven of eight names are below their 20-SMA.** SPY, QQQ, XLF, IWM and SMH have been under
  trend for days; TLT and GLD joined them this session. Every 10-day return in the universe
  except XLE's is negative. This is not a rotation out of one sector into another — it is broad
  risk-off with a single energy holdout.
- **Concentration is now the system's choice, not a drift.** [[Risk Rules v2]] §2 permits up to
  100% of the account in a single position **only when** that position is the top-ranked asset —
  which XLE is, unambiguously. But slot 2 sitting in cash while the sleeve arms on the *same*
  underlying means XLE drives essentially the whole book. If energy gaps down, there is nothing
  in this table to cushion it.

## Options sleeve — armed, and the expiry window closed to one date

The gate is open: XLE holds slot 1 with a **+10.68%** 20-day return. The sleeve is empty. Cash
settled overnight. All three preconditions are met for the first time in the strategy's life.

**One thing changed overnight that yesterday's plan did not anticipate.** [[2026-09-01 Daily Signals]]
named the **Oct 16 $65C** as the intended contract at 45 DTE. As of today Oct 16 is **44 DTE** — it
fell through the 45-day floor in [[Risk Rules v2]] §4 while sitting on the shelf. XLE's chain then
jumps straight from Oct 16 to **Nov 20**, so exactly one expiration remains inside the 45–90 DTE
window. Live quotes, 9:31 ET, XLE at $64.47:

| Contract | DTE | Delta | Bid/Ask | Mark | Premium | OI | Conforms? |
|---|---:|---:|---:|---:|---:|---:|:---:|
| XLE Nov 20 **$65C** | **79** | **0.527** | $2.89 / $3.05 | **$2.97** | **$297** | 34,930 | ✅ |
| XLE Nov 20 $60C | 79 | 0.789 | $5.80 / $6.05 | $5.93 | $593 | 5,970 | ❌ delta > 0.65 |
| XLE Nov 20 $70C | 79 | 0.291 | $1.26 / $1.37 | $1.32 | $132 | 20,642 | ❌ delta < 0.50 |
| XLE Oct 16 $65C | 44 | — | — | — | — | — | ❌ **DTE < 45** |

Nov 20 strikes run in $5 increments above $51, so $60/$65/$70 is the whole near-the-money menu and
**$65C is the only contract in the universe that conforms today.** Premium $297 = **35.5%** of the
$836.88 account, inside the 50% ($418.44) cap. Forced-close date under the 21-DTE rule:
**2026-10-30**.

The narrower expiry window is worth recording as a standing fact, not a one-off: XLE lists monthly
LEAPS-style expirations with a gap between Oct 16 and Nov 20, so the 45–90 DTE band will often
contain **one** date rather than several. Contracts identified on day N cannot be assumed to still
conform on day N+1.

## Actions taken

**No equity trades.** XLE is still the slot-1 target, so §5 holds it — no sell. Slot 2 has no
qualifier to buy, so §4 puts that tranche in cash. Neither leg had anything to do.

**Options sleeve armed** — bought 1 XLE Nov 20 $65C at limit $2.97 (mid), GFD. First options
position since the 08-04 XLE call close, and the **first live use of `review_option_order` /
`place_option_order`** under the desktop allowlist.

Detail in [[2026-09-02 0930 Cycle — Options Sleeve Armed (XLE Nov 65C)]].
