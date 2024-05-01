#!/bin/bash
swaymsg "exec kitty ~/"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
. ~/.config/sway/fullscreen-enable-all-terminal-windows.sh;
