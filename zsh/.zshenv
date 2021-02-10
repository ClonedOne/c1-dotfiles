# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"

# general local binaries
export PATH="$HOME/.local/bin:$PATH"

# node and npm
export PATH=$PATH:~/tools/npm_global
export PATH="$HOME/tools/npm_global/bin:$PATH"

# go language
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# rust language
source "$HOME/.cargo/env"

# ruby gems
export GEM_HOME="$HOME/.gems"
export PATH="$PATH:$HOME/.gems/bin"
