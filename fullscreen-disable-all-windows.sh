# # #!/bin/bash
# # cf.: https://github.com/swaywm/sway/issues/4121
# # Get available windows
# #windows=$(swaymsg -t get_tree | jq -r '.nodes[1].nodes[].nodes[] | .. | (.id|tostring) + " " + .name?' | grep -e "[0-9]* ."  )

# # # Get regular windows
# regular_windows=$(swaymsg -t get_tree | jq -r '.nodes[1].nodes[].nodes[] | .. | (.id|tostring) + " " + .name?' | grep -e "[0-9]* ."  )

# # # Get floating windows
# floating_windows=$(swaymsg -t get_tree | jq '.nodes[1].nodes[].floating_nodes[] | (.id|tostring) + " " + .name?'| grep -e "[0-9]* ." | tr -d '"')

# enter=$'\n'
# if [[ $regular_windows && $floating_windows ]]; then
#   all_windows="$regular_windows$enter$floating_windows"
# elif [[ $regular_windows ]]; then
#   all_windows=$regular_windows
# else
#   all_windows=$floating_windows
# fi

# echo $floating_windows
# # for fn in $all_windows; do
# #     abc=`$fn | awk '{print $1}'`
# #     echo $abc
# # done

# # # Select window with rofi

# # selected=$(echo "$windows" | awk '{print $1}')

# # # Tell sway to disable full screen
# # # swaymsg [con_id="$selected"] fullscreen disable
# swaymsg -t get_tree | jq -r '.. | (.nodes? // empty)[] | select(.pid and .visible) | {name} + .rect
# #   | "\(.x),\(.y) \(.width)x\(.height) \(.name)"'

# # https://gist.github.com/dshoreman/278091a17c08e30c46c7e7988b7c2f7d
# abc=swaymsg -t get_tree | jq --argjson visible "$(swaymsg -t get_workspaces | jq -c '[.[] | select(.visible) | .id]')" '.. | (.nodes? // empty)[] | select(.type == "workspace" and .id == $visible[]) | .. | (.nodes? // empty)[] | select(.pid) | .rect | "\(.x),\(.y) \(.width)x\(.height)"'
# echo $abc

# | sed 's/}/n /'
#names=$(swaymsg -t get_tree | jq -r '.. | (.nodes? // empty)[] | select(.pid and .visible) | {id}') 
# code_val=$(jq --argjson '.name' <<< "$names")
# code_val= names | jq --argjson name
# echo $code_val
# echo $names
# keyValues=$(jq -n $names) | jq .name
# echo jq '.name' <(echo "$names")

#names=$(swaymsg -t get_tree | jq --argjson visible "$(swaymsg -t get_workspaces | jq -c '[.[] | select(.visible) | .id]')" '.. | (.nodes? // empty)[] | select(.type == "workspace" and .id == $visible[]) | .. | (.nodes? // empty)[] | select(.pid)' | jq {id})


# echo $names
# https://stackoverflow.com/questions/47105490/can-i-pass-a-string-variable-to-jq-not-the-file


# swaymsg -t get_tree > ./window-tree.json
# | $(jq -r '[.. | .floating_nodes?, .nodes? | .[]? | .nodes? | .[]? | select(.window!=null) | .window_properties | .instance ]') # | .[] | .nodes | . []") # | $(select(.nodes != null) | .nodes | .[]) | $(select(.name != null)) | "\(.id?) \(.name?)""
#echo $variable
# readarray -t windows < <($variable | jq -c '[.. | .floating_nodes?, .nodes? | .[]? | .nodes? | .[]? | select(.window!=null) | .window_properties | .instance ]')
readarray -t windows < <(swaymsg -t get_tree | jq -c '[.. | .floating_nodes?, .nodes? | .[]? | .nodes? | .[]? | select(.window!=null) | .window_properties | .instance ]')
# foundWindows=$(jq -p $windows[0])
for win in $(echo "${windows}" | jq -r '.[]'); do
  echo $win
  swaymsg "[instance="$win"] fullscreen disable"
  #   _jq() {
  #    echo ${row} | base64 --decode | jq -r ${1}
  #   }
  #  echo $(_jq '.name')
done
# for w in $windows
# do
# echo $w
# end

#  echo $names
 #| $(jq) -r '.nodes | .[] | .nodes | . []' # | $(select(.nodes != null)) | .nodes | .[] | select(.name != null) | "\(.id?) \(.name?)"')

# idsWhitespace=$(jq '.id' <<< $names)
# for s in $foundWindows
# do
#   echo $s
#   # swaymsg "[con_id="$((s))"] fullscreen disable"
# done
# echo $idsWhitespace
# theArray={`echo $names`}
# echo $theArray
# # IFS=' ' read -r -a array <<< "$idsWhitespace"
# for element in "${array[@]}"
# do
#     echo "$element"
# done
# echo $names;
# IFS='}' read -ra ADDR <<< "$names"
# for i in "${ADDR[@]}"; do
#   # process "$i"
#   echo $i
# done

# while IFS='}' read -ra ADDR; do
#   for i in "${ADDR[@]}"; do
#     # process "$i"
#     echo $i
#   done
# done <<< "$names"

# echo $names

# IFS= read -d '' DATA < $names  ## Imitates your DATA=$(wget ...). Just replace it.
# while IFS=\" read -ra LINE; do
#     case "${LINE[1]}" in
#     name)
#         # ERROR_MSG=${LINE[3]}
#         # printf -v ERROR_MSG '%b' "${LINE[3]}"
#         printf ${LINE[1])}
#         ;;
#     # success)
#     #     # SUCCESS_MSG=${LINE[3]}
#     #     printf -v SUCCESS_MSG '%b' "${LINE[3]}"
#     #     ;;
#     esac
# done <<< "$DATA"
