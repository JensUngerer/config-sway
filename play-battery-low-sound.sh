#!/bin/bash

while true; do
sleep 1;
battery_info=$(~/.config/sway/battery-info.sh);
# cf.: https://www.baeldung.com/linux/process-a-bash-variable-with-sed
percentage=$(echo "$battery_info" | sed -r 's/\%//g');
percentage=$(expr $percentage)
# DEbUGGING:
# echo $percentage;
if [ $percentage -lt 92 ];
then
# mp3 taken from public domain: cf.: https://github.com/201dreamers/sway-config/tree/master/.config/sway/modules/critical_battery_beeper
mpg123 -q ~/.config/sway/critical_battery.mp3;
mpg123 -q ~/.config/sway/critical_battery.mp3;
fi
done