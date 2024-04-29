#!/bin/bash
swaymsg "exec code"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg "[instance="code"] fullscreen enable"
