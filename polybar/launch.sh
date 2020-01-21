#!/usr/bin/env bash
killall -q xfce4-panel
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bottom bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bottom &

echo "Bars launched..."
