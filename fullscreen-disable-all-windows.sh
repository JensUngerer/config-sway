#!/bin/bash
# # cf.: https://github.com/swaywm/sway/issues/4121
# # https://gist.github.com/dshoreman/278091a17c08e30c46c7e7988b7c2f7d
# https://stackoverflow.com/questions/47105490/can-i-pass-a-string-variable-to-jq-not-the-file
readarray -t windows < <(swaymsg -t get_tree | jq -c '[.. | .floating_nodes?, .nodes? | .[]? | .nodes? | .[]? | select(.window!=null) | .window_properties | .instance ]')
for win in $(echo "${windows}" | jq -r '.[]'); do
# DEBUGGING:
#  echo $win
  swaymsg "[instance="$win"] fullscreen disable"
done
