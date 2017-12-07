  export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="refined"

DISABLE_UNTRACKED_FILES_DIRTY="true"

REPORTTIME=1

plugins=(git virtualenvwrapper z catimg jsontools taskwarrior sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin


# General aliases
alias tmy="tmux attach -t gio || tmux new -s gio"
alias tmd="tmux detach"
alias ..="cd .."
alias up="cd .."
alias c="clear"
alias updateme="sudo apt update; sudo apt upgrade"
alias nanna="sudo pm-suspend"

# Utilities
alias poffy="$HOME/tools/spotifycli/sp.sh"
alias ra="ranger"
alias ccat="pygmentize -g"
alias feeds="newsbeuter -r"
alias pomodoro="sleep 25m && mplayer ~/Music/pomodoro.mp3"
alias fmusic="firefox http://focusmusic.fm/"
alias tgcli="$HOME/tools/tg/bin/telegram-cli"
alias copy="xsel -ib"
