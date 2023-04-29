#!/bin/bash
swaymsg [class=Google-chrome] kill;
swaymsg [class=Code] kill;
swaymsg [class=Spotify] kill;
# cf.: https://wiki.archlinux.org/title/Sway
# swaymsg -t get_tree | grep "class"

