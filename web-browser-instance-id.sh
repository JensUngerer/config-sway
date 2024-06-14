#!/bin/bash

swaymessagestr='[app_id="';
swaymessagestr+=$SWAY_BROWSER;
swaymessagestr+='"]'

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
outfile="/dev/stdout"
printf '%s\n' "$swaymessagestr" >"$outfile"
