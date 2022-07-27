#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar i3bar 2>&1 | tee -a /home/lw/.config/polybar/i3bar.log & disown
polybar traybar 2>&1 | tee -a /home/lw/.config/polybar/traybar.log & disown
polybar centerbar 2>&1 | tee -a /home/lw/.config/polybar/centerbar.log & disown
