export ZSH=$HOME/.oh-my-zsh
export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"

ZSH_THEME="spaceship"

DISABLE_UNTRACKED_FILES_DIRTY="true"

REPORTTIME=1

plugins=(git z catimg docker jsontools virtualenvwrapper taskwarrior sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/tools/npm_global
export LLVM_CONFIG=/usr/bin/llvm-config-3.9
# Node
export PATH="$HOME/tools/npm_global/bin:$PATH"
# Rust
export PATH="$HOME/.cargo/bin:$PATH"
# Go
export GOPATH=$HOME/golang
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


# General aliases
alias tmy="tmux attach -t gio || tmux new -s gio"
alias tmd="tmux detach"
alias ..="cd .."
alias up="cd .."
alias c="clear"
alias updateme="brew update; brew upgrade"

# Utilities
alias poffy="$HOME/tools/spotifycli/sp.sh"
alias ra="ranger"
alias pomodoro="sleep 25m && mplayer ~/Music/pomodoro.mp3"
alias fmusic="firefox http://focusmusic.fm/"
alias copy="xsel -ib"
alias l="lsd -al"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# for zsh autocomplete
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
