#!/bin/bash
swaymsg "exec chromium"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg "[instance="chromium"] fullscreen enable"


