#!/bin/bash
swaymsg "workspace 2; exec spotify"
sleep 1;
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg "[instance="spotify"] fullscreen enable"