#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg '[app_id="kitty"] fullscreen enable'