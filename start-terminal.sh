#!/bin/bash
swaymessage="exec ";
swaymessage+=$SWAY_TERMINAL;
swaymessage+=" ~/;";
swaymsg $swaymessage;
# sleep 1;
# . ~/.config/sway/fullscreen-disable-all-windows.sh;
# sleep 1;
# . ~/.config/sway/fullscreen-enable-all-terminal-windows.sh;
