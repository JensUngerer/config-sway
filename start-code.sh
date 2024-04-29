#!/bin/bash
swaymsg "workspace 1; exec code"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg "[instance="code"] fullscreen enable"
