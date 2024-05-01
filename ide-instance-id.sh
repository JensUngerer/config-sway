#!/bin/bash

swaymessage='[instance="';
swaymessage+=$SWAY_BROWSER;
swaymessage+='"]'

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
outfile="/dev/stdout"
printf '%s\n' "$swaymessage" >"$outfile"
