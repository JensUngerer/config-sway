#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymessage=$(~/.config/sway/music-instance-id.sh);
swaymessage+=" fullscreen enable"; 
swaymsg $swaymessage;