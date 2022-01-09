#!/usr/bin/env bash

# Add this script to your wm startup file.
DIR="$HOME/.config/polybar"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Wait until monitors have started
while xrandr --listactivemonitors | wc -l < 4; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &
polybar -q second -c "$DIR"/config.ini &
polybar -q up -c "$DIR"/config.ini &
# IPC settings and test
ln -sf /tmp/polybar_mqueue.$! /tmp/ipc-main
echo message >/tmp/ipc-main
