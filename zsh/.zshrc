export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/tools/npm_global/bin:$PATH"

ZSH_THEME="spaceship"

DISABLE_UNTRACKED_FILES_DIRTY="true"

REPORTTIME=1

plugins=(git virtualenvwrapper z catimg jsontools taskwarrior sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/tools/npm_global
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export LLVM_CONFIG=/usr/bin/llvm-config-3.9

# General aliases
alias tmy="tmux attach -t gio || tmux new -s gio"
alias tmd="tmux detach"
alias ..="cd .."
alias up="cd .."
alias c="clear"
alias updateme="sudo apt update; sudo apt upgrade"
alias nanna="systemctl suspend"

# Utilities
alias poffy="$HOME/tools/spotifycli/sp.sh"
alias ra="ranger"
alias ccat="pygmentize -g"
alias feeds="newsbeuter -r"
alias pomodoro="sleep 25m && mplayer ~/Music/pomodoro.mp3"
alias fmusic="firefox http://focusmusic.fm/"
alias tgcli="$HOME/tools/tg/bin/telegram-cli"
alias copy="xsel -ib"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Cuda stuff
# export PATH=/usr/local/cuda-9.0/bin${PATH:+${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}:+${LD_LIBRARY_PATH}
