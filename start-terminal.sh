#!/bin/bash
swaymsg "exec $SWAY_TERMINAL ~/"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
. ~/.config/sway/fullscreen-enable-all-terminal-windows.sh;
