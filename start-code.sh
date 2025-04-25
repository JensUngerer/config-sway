#!/bin/bash
# swaymessage="exec ";
# swaymessage+="'code --enable-features=UseOzonePlatform --ozone-platform=wayland'";
# swaymessage+=" '--disable-extensions --enable-features=UseOzonePlatform --ozone-platform=wayland'";
# DEBUGGING:
# echo $swaymessage;

swaymsg exec 'code --enable-features=UseOzonePlatform --ozone-platform=wayland';
# sleep 1;
# . ~/.config/sway/fullscreen-disable-all-windows.sh;
# sleep 1;
# . ~/.config/sway/fullscreen-enable-all-code-windows.sh;
