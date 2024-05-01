swaymessage=$(~/.config/sway/web-browser-instance-id.sh);
swaymessage+=' kill'
# DEBUGGING:
# echo $swaymessage

swaymsg $swaymessage
