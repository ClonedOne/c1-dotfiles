#!/bin/sh
# guakestart.sh

# sleep, cause why not?
sleep 5

# try to attach to existing default session or start new session
guake -r "yog" -e "tmux attach -t yog || tmux new -s yog"
# guake -n=2 -e "cd" -r "terminal" &
