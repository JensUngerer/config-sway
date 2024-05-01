#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymessage=$(~/.config/sway/ide-instance-id.sh);
swaymessage+=" fullscreen enable";
# DEBUGGING:
# echo $swaymessage;
swaymsg $swaymessage;
