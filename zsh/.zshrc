export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/tools/npm_global/bin:$PATH"

ZSH_THEME="spaceship"

DISABLE_UNTRACKED_FILES_DIRTY="true"

REPORTTIME=1

plugins=(git virtualenvwrapper z catimg jsontools taskwarrior sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
# Go language
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
# Virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Node npm
export PATH=$PATH:~/tools/npm_global

# General aliases
alias tmy="tmux attach -t gio || tmux new -s gio"
alias tmd="tmux detach"
alias ..="cd .."
alias up="cd .."
alias clear="printf '\33[H\33[2J'"
alias updateme="sudo apt update; sudo apt upgrade"
alias nanna="systemctl suspend"

# Utilities
alias ra="ranger"
alias copy="xsel -ib"
alias l="ls -ahl"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
