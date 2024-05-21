swaymsg -t get_outputs | jq -r ".[].name" && swaymsg -t get_outputs | jq -r ".[].modes[0]"
