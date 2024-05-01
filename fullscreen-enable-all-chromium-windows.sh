#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg '[instance="chromium"] fullscreen enable'
