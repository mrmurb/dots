#!/usr/bin/env sh

# Kill all bars
killall -q lemonbuddy

# Wait for processes to die
while pgrep -x lemonbuddy >/dev/null; do sleep 1; done

# Start bar
lemonbuddy bar &
