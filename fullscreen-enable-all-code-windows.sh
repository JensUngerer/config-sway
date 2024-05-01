#!/bin/bash
. ~/.config/sway/fullscreen-disable-all-windows.sh;
sleep 1;
swaymsg '[instance="code"] fullscreen enable'
