#!/bin/bash
swaymsg "exec kitty ~/"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg "[app_id="kitty"] fullscreen enable"
