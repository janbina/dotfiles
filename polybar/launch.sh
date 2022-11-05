#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar
echo "---" | tee -a /tmp/polybar.log

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar bar >>/tmp/polybar.log 2>&1 &
    done
else
    polybar bar >>/tmp/polybar.log 2>&1 &
fi

echo "Bars launched..."
