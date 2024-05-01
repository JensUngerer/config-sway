#!/bin/bash
swaymsg "workspace 1; exec chromium"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
. ~/.config/sway/fullscreen-enable-all-chromium-windows.sh;
