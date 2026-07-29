---
tags: [journal, mandate]
date: 2026-07-29
---

# Journal — 2026-07-29 — Mandate change: aggressive + options

## What changed

~10 minutes after the v1 deployment completed, the owner directed: **"I want much more aggressive trading. Options also."** This is an explicit risk-appetite decision by the account owner; it overrides the conservative defaults I chose in v1 and the original [[Risk Rules]] limits that conflicted with it (leveraged-ETF ban, 55% position cap). Rules rewritten as [[Risk Rules v2]]; strategy rewritten as [[Aggressive Leveraged Momentum v2]].

## Reasoning chain

1. **Options require approval.** The Agentic account has no options level. Upgrade link generated and sent to the owner; overlay design documented in v2 §6 so it can start the moment approval lands. Constraint noted: the agent API is single-leg only — no spreads — so the overlay is long calls sized as a defined-risk sleeve, not premium-selling structures (which anyway need collateral this account can't spare).
2. **Aggression with edge, not aggression as recklessness.** Recomputed signals with SMH added: semis are the runaway momentum leader (+48.8% composite vs IWM's +15.0). Concentration → 100% in the leader.
3. **The leverage decision.** The naive aggressive move is SOXL today. But every high-momentum underlying is in a 4-week pullback (SMH −8.2%), and a 3x wrapper on a falling high-vol asset is where volatility decay does maximum damage (SOXL is ~50% off its June high while SMH is only ~15% off — that asymmetry *is* the decay). So the v2 rules gate leverage on positive 4-week trend: today that means **SMH 1x now, SOXL on trend confirmation**. This gate was set ex-ante, in the same session, before placing any v2 trade.
4. **Execution reality.** Sold IWM + EEM (round-trip +$0.54). Cash-account T+1 settlement means the $390.54 proceeds aren't buying power until tomorrow — deployment scheduled via automated wakeup for 2026-07-30 9:35 AM ET ([[2026-07-30 SMH Buy (scheduled)]]).

## Owner action items

- Options approval: https://applink.robinhood.com/upgrade_options?account_number=671861227 (aim for Level 2+; confirm here when approved).

## Positions after this session

100% cash ($400.54), SMH deployment pending settlement.
