export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.local/bin:$PATH"

ZSH_THEME="spaceship"

DISABLE_UNTRACKED_FILES_DIRTY="true"

REPORTTIME=1

plugins=(git virtualenvwrapper z jsontools taskwarrior zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

# Virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3

# General aliases
alias tmy="tmux attach -t gio || tmux new -s gio"
alias tmd="tmux detach"
alias ..="cd .."
alias up="cd .."
alias c="clear"

# Utilities
alias ra="ranger"
alias copy="xsel -ib"
alias l="ls -ahl"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Cuda stuff
# export PATH=/usr/local/cuda-9.0/bin${PATH:+${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda/lib64:${LD_LIBRARY_PATH}:+${LD_LIBRARY_PATH}
