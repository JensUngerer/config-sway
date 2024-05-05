# https://stackoverflow.com/questions/27924568/in-unix-how-to-find-out-if-process-running-and-return-true-false
if [[ $(ps -ef | grep -c sway)  -ne 1 ]]; then
isRunning=true
else
isRunning=false
fi

# https://unix.stackexchange.com/questions/336224/elegant-solution-to-echo-to-either-stdout-or-file-in-bash
outfile="/dev/stdout"
printf '%s\n' "$isRunning" >"$outfile"
