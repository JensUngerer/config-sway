#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymessage='[app_id="';
swaymessage+=$SWAY_TERMINAL;
swaymessage+="\"] fullscreen enable;";
# DEBUGGING:
# echo $swaymessage;

swaymsg $swaymessage;