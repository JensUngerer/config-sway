# swaymessage=$(~/.config/sway/web-browser-instance-id.sh);
# swaymessage+=' kill'
# DEBUGGING:
# echo $swaymessage > ~/.config/sway/kill-chromium.log
# swaymsg $swaymessage

swaymsg '[instance="chromium"] kill'

