#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg '[app_id="$SWAY_TERMINAL"] fullscreen enable'