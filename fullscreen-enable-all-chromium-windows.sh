#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg '[instance="$SWAY_BROWSER"] fullscreen enable'
