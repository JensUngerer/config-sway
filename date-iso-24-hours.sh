#!/bin/bash

date_formatted=$(date "+%Y-%m-%d %H:%M:%S")

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
outfile="/dev/stdout"
printf '%s\n' "$date_formatted" >"$outfile"