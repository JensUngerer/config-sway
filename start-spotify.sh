#!/bin/bash
swaymessage="workspace 2; exec ";
swaymessage+=$SWAY_MUSIC;
# DEBUGGING:
# echo $swaymessage;

swaymsg $swaymessage;
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
. ~/.config/sway/fullscreen-enable-all-spotify-windows.sh;