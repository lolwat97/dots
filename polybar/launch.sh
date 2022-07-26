#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar mybar 2>&1 | tee -a /home/lw/.config/polybar/polybar1.log & disown
