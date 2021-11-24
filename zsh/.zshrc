# Source zsh-antigen installed with apt
source $HOME/tools/antigen/antigen.zsh

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
# use z to jump around
antigen bundle agkozak/zsh-z
# use fzf with tab completion
antigen bundle Aloxaf/fzf-tab
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

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

# Conda
antigen bundle esc/conda-zsh-completion

# Do not remove
antigen apply

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
alias code="flatpak run com.visualstudio.code"

# Network/VPN
alias achtung-up="sudo wg-quick up ~/tools/wireguard/achtung.conf"
alias achtung-down="sudo wg-quick down ~/tools/wireguard/achtung.conf"
alias mozus-up="sudo wg-quick up ~/tools/mozwire/us101-wireguard.conf"
alias mozus-down="sudo wg-quick down ~/tools/mozwire/us101-wireguard.conf"
alias mozit-up="sudo wg-quick up ~/tools/mozwire/it5-wireguard.conf"
alias mozit-down="sudo wg-quick down ~/tools/mozwire/it5-wireguard.conf"

# source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/gio/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/gio/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/gio/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/gio/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

