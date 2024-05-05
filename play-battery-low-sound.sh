#!/bin/bash
# sleep 4;
# isSwayRunning=$(~/.config/sway/is-sway-running.sh)
# isSwayRunning=$(expr $isSwayRunning)

# while $isSwayRunning; do
# sleep 1;
isSwayRunning=$(~/.config/sway/is-sway-running.sh)
# DEBUGGING:
# echo $isSwayRunning;
isSwayRunning=$(expr $isSwayRunning)

battery_info=$(~/.config/sway/battery-info.sh);
# cf.: https://www.baeldung.com/linux/process-a-bash-variable-with-sed
percentage=$(echo "$battery_info" | sed -r 's/\%//g');
percentage=$(expr $percentage)

# DEbUGGING:
# echo $isSwayRunning
# echo $percentage;
if [ $percentage -lt 50 ] && [ $isSwayRunning ];
then
# mp3 taken from public domain: cf.: https://github.com/201dreamers/sway-config/tree/master/.config/sway/modules/critical_battery_beeper
mpg123 -q ~/.config/sway/critical_battery.mp3;
fi
# done

# echo "do not play sound as sway has just been terminated";