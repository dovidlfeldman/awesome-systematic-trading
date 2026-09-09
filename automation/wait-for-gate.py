#!/usr/bin/env python3
"""Block until the 9:35 AM ET order gate opens. Used by the daily cycle to fill the
9:30-9:35 open-volatility wait without exiting early (the 2026-08-28 bug)."""
import time
from datetime import datetime
from zoneinfo import ZoneInfo

ET = ZoneInfo("America/New_York")
while True:
    now = datetime.now(ET)
    if (now.hour, now.minute) >= (9, 35):
        print(now.strftime("GATE OPEN %H:%M:%S ET"))
        break
    time.sleep(5)
