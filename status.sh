# cf.: https://unix.stackexchange.com/questions/473788/simple-swaybar-example
# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# Produces "21 days", for example
uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
# date +'%Y-%m-%d %H:%M:%S';
date_formatted=$(date "+%Y-%m-%d %H:%M:%S")

# # Get the Linux version but remove the "-1-ARCH" part
# linux_version=$(uname -r | cut -d '-' -f1)

# # Returns the battery status: "Full", "Discharging", or "Charging".
# # battery_status=$(cat /sys/class/power_supply/BAT0/status)
# # battery_status=$(upower -i $(upower -e | grep 'BAT') | grep -E "percentage" | awk '{print $2}')

# # "upower --enumerate | grep 'BAT'" gets the battery name (e.g.,
# # "/org/freedesktop/UPower/devices/battery_BAT0") from all power devices.
# # "upower --show-info" prints battery information from which we get
# # the state (such as "charging" or "fully-charged") and the battery's
# # charge percentage. With awk, we cut away the column containing
# # identifiers. i3 and sway convert the newline between battery state and
# # the charge percentage automatically to a space, producing a result like
# # "charging 59%" or "fully-charged 100%".

# cf.: https://www.cyberciti.biz/faq/linux-upower-command-examples-and-syntax/
#battery_info=$(upower --show-info /org/freedesktop/UPower/devices/battery_CMB1 | egrep "state|percentage" | awk '{print $2}')
battery_info=$(upower --show-info /org/freedesktop/UPower/devices/battery_CMB1 | egrep "state|percentage" | awk '{print $2}' | awk 'END{print}')
# Emojis and characters for the status bar
# 💎 💻 💡 🔌 ⚡ 📁 \|
# echo $uptime_formatted ↑ $linux_version 🐧 $battery_status 🔋 $date_formatted
echo $battery_info ' ' $uptime_formatted ' ' $date_formatted