swaymessage=$(~/.config/sway/music-instance-id.sh);
swaymessage+=" kill";
# DEBUGGING:
# echo $swaymessage;

swaymsg $swaymessage;