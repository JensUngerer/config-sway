# systemctl --user start lowBattery.timer;
source ~/.config/sway/sway-environment-variables.sh;
sway --config ~/.config/sway/config-work-project-room-desktop;
echo 'sway has just been terminated';
# not necessary... as not loaded?
# systemctl --user stop lowBattery.time;