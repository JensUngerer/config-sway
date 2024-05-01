#!/bin/bash
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
outfile="/dev/stdout"
printf '%s\n' "$uptime_formatted" >"$outfile"