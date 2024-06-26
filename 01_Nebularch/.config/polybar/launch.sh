#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar main -c ~/.config/polybar/config.ini &
polybar primary -c ~/.config/polybar/config.ini &
polybar secondary -c ~/.config/polybar/config.ini &
