# Source zsh-antigen installed with apt
source $HOME/tools/antigen/bin/antigen.zsh

# this is a fast theme
antigen theme romkatv/powerlevel10k
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# navigation
# source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# use z to jump around
antigen bundle agkozak/zsh-z
# use fzf with tab completion
antigen bundle Aloxaf/fzf-tab

# Various autocompletions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
bindkey '^ ' autosuggest-accept
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search


# Load oh-my-zsh library.
antigen use oh-my-zsh
antigen bundle git
antigen bundle history
antigen bundle command-not-found

# Do not remove
antigen apply

# Pyenv managemet
eval "$(pyenv init -)"  
eval "$(pyenv virtualenv-init -)"

# General aliases
alias ..='cd ..'
alias clear='clear -x'
alias l="ls -h --color"
alias ll="ls -Ahl --color"
alias updateme="sudo apt update; sudo apt upgrade"
alias nanna="systemctl suspend"

# Utilities
alias cdiff='colordiff -u'
alias ra="ranger"
alias copy="xsel -ib"
alias tmy="tmux attach -t gio || tmux new -s gio"
alias tmd="tmux detach"
alias vi="nvim"

# Network/VPN
alias achtung-up="sudo wg-quick up ~/tools/wireguard/achtung.conf"
alias achtung-down="sudo wg-quick down ~/tools/wireguard/achtung.conf"
alias mozus-up="sudo wg-quick up ~/tools/mozwire/us101-wireguard.conf"
alias mozus-down="sudo wg-quick down ~/tools/mozwire/us101-wireguard.conf"
alias mozit-up="sudo wg-quick up ~/tools/mozwire/it5-wireguard.conf"
alias mozit-down="sudo wg-quick down ~/tools/mozwire/it5-wireguard.conf"

