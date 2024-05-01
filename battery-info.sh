#!/bin/sh

# cf.: https://www.cyberciti.biz/faq/linux-upower-command-examples-and-syntax/
#battery_info=$(upower --show-info /org/freedesktop/UPower/devices/battery_CMB1 | egrep "state|percentage" | awk '{print $2}')
battery_info=$(upower --show-info /org/freedesktop/UPower/devices/battery_CMB1 | egrep "state|percentage" | awk '{print $2}' | awk 'END{print}')

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
outfile="/dev/stdout"
printf '%s\n' "$battery_info" >"$outfile"
# echo $battery_info;
