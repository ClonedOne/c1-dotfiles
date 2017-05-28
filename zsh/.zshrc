  export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="refined"

DISABLE_UNTRACKED_FILES_DIRTY="true"

REPORTTIME=1

plugins=(git virtualenvwrapper z web-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias tgcli="$HOME/tools/tg/bin/telegram-cli"
alias raspi="ssh gio@192.168.1.10"
alias tmy="tmux attach -t yog || tmux new -s yog"
alias tmd="tmux detach"
alias ..="cd .."
alias up="cd .."
alias fmusic="firefox http://focusmusic.fm/"
alias pomodoro="sleep 25m && mplayer ~/Music/pomodoro.mp3"
alias c="clear"
alias updateme="sudo apt update; sudo apt upgrade"
alias feeds="newsbeuter -r"
alias ccat="pygmentize -g"
alias ra="ranger"
alias nanna="sudo pm-suspend"
alias poffy="$HOME/tools/spotifycli/sp.sh"
alias t="python $HOME/tools/t/t.py --task-dir $HOME/Dropbox/tasks --list tasks"
