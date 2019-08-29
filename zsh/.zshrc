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
alias c="clear"
alias updateme="sudo apt update; sudo apt upgrade"
alias nanna="systemctl suspend"

# Utilities
alias ra="ranger"
alias pomodoro="sleep 25m && mplayer ~/Music/pomodoro.mp3"
alias fmusic="firefox http://focusmusic.fm/"
alias copy="xsel -ib"
alias l="ls -ahl"
alias ll="lsd -al"
alias upnotes="git -C ~/Documents/notes commit -am 'updating notes'; git -C ~/Documents/notes push"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Cuda stuff
# export PATH=/usr/local/cuda-9.0/bin${PATH:+${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}:+${LD_LIBRARY_PATH}
