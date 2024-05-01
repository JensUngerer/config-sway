#!/bin/bash

# cf.: https://unix.stackexchange.com/questions/473788/simple-swaybar-example

# cf.: https://stackoverflow.com/questions/2559076/how-do-i-redirect-output-to-a-variable-in-shell
# eval '"$SCRIPT_PATH"'
battery_info=$(~/.config/sway/battery-info.sh);

# DEBUGGING
# echo $battery_info;

# cf.: https://stackoverflow.com/questions/2559076/how-do-i-redirect-output-to-a-variable-in-shell
uptime_formatted=$(~/.config/sway/uptime-info.sh);

# DEBUGGING:
# echo $uptime_formatted;

# cf.: https://stackoverflow.com/questions/2559076/how-do-i-redirect-output-to-a-variable-in-shell
date_formatted=$(~/.config/sway/date-iso-24-hours.sh);

statusWithBattery="";
statusWithBattery+=$battery_info;
statusWithBattery+=" ";
statusWithBattery+=$uptime_formatted;
statusWithBattery+=" ";
statusWithBattery+=$date_formatted;

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
# outfile="/dev/stdout"
# printf '%s\n' "$statusWithBattery" >"$outfile"

echo $statusWithBattery;