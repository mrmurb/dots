#!/usr/bin/env sh

# Kill all bars
killall -q polybar

# Wait for processes to die
while pgrep -x polybar >/dev/null; do sleep 1; done

# Start bar
polybar $1 &
