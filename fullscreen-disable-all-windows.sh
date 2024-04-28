#!/bin/bash
# # cf.: https://github.com/swaywm/sway/issues/4121
# # https://gist.github.com/dshoreman/278091a17c08e30c46c7e7988b7c2f7d
# https://stackoverflow.com/questions/47105490/can-i-pass-a-string-variable-to-jq-not-the-file

# DEBUGGING:
# swaymsg -t get_tree > ~/.config/sway/get_tree.json;
{
readarray -t windows < <(swaymsg -t get_tree | jq -c '[.. | .floating_nodes?, .nodes? | .[]? | .nodes? | .[]? | select(.window!=null) | .window_properties | .instance ]')
for win in $(echo "${windows}" | jq -r '.[]'); do
# DEBUGGING:
  # echo $win
  swaymsg "[instance="$win"] fullscreen disable"
done
} || {
  echo "error when trying disable fullscreen by instance";
}
{
readarray -t windows_by_app_id < <(swaymsg -t get_tree | jq -c '[.. | .floating_nodes?, .nodes? | .[]? | .nodes? | .[]? | .app_id | select(.!=null) ]')
for win_by_app_id in $(echo "${windows_by_app_id}" | jq -r '.[]'); do
# DEBUGGING:
  # echo $win_by_app_id
  swaymsg "[app_id="$win_by_app_id"] fullscreen disable"
done
} || {
    echo "error when trying disable fullscreen by app_id";
}
