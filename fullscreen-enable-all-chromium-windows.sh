#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;


swaymessage=$(~/.config/sway/web-browser-instance-id.sh);
swaymessage+=' fullscreen enable';
# DEBUGGING:
# echo $swaymessage

swaymsg $swaymessage; 
