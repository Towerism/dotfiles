#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

export LIGHTER_BACKGROUND=$(color-blend whiten --factor 0.1 $BACKGROUND)

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

function loadbars {
    echo "loading polybar on monitor $1"
    lighter_background=~/
    MONITOR=$1 polybar --reload example &
}

# Launch bar1 and bar2
if type "xrandr"; then
    for m in $(polybar --list-monitors | cut -d":" -f1); do
        loadbars $m
    done
else
    loadbars
fi

echo "Bars launched..."

