# cf.: https://stackoverflow.com/questions/2559076/how-do-i-redirect-output-to-a-variable-in-shell
uptime_formatted=$(~/.config/sway/uptime-info.sh);

# DEBUGGING:
# echo $uptime_formatted;

# cf.: https://stackoverflow.com/questions/2559076/how-do-i-redirect-output-to-a-variable-in-shell
date_formatted=$(~/.config/sway/date-iso-24-hours.sh)

echo $uptime_formatted ' ' $date_formatted
