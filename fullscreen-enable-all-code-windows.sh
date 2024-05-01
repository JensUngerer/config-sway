#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymessage=$(~/.config/sway/ide-instance.sh);
swaymessage+=" fullscreen enable";
swaymsg $swaymessage;
