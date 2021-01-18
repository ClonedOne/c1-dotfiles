# Zinit initialization
# source ~/.zinit/bin/zinit.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light romkatv/powerlevel10k

zinit snippet OMZ::lib/completion.zsh
zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/key-bindings.zsh
zinit snippet OMZ::lib/theme-and-appearance.zsh

# Pyenv managemet
zinit ice atclone'PYENV_ROOT="$PWD" ./libexec/pyenv init - > zpyenv.zsh && git clone https://github.com/pyenv/pyenv-virtualenv ./plugins/pyenv-virtualenv' \
    atinit'export PYENV_ROOT="$PWD"' atpull"%atclone" \
    as'command' pick'bin/pyenv' src"zpyenv.zsh" nocompile'!'
zinit light pyenv/pyenv
eval "$(pyenv init -)"  
eval "$(pyenv virtualenv-init -)"

# Various autocompletions
zinit snippet https://github.com/bobthecow/git-flow-completion/tree/master/git-flow-completion.zsh
zinit ice blockf
zinit light zsh-users/zsh-completions

# Autocorrect errors
zinit light laggardkernel/zsh-thefuck

# Using z for navigation
zinit load agkozak/zsh-z

# Fzf 
zinit snippet https://github.com/junegunn/fzf/tree/master/shell/key-bindings.zsh
# fzf-tab needs to be loaded after compinit, but before plugins which will wrap widgets, such as zsh-autosuggestions or fast-syntax-highlighting.
zinit light Aloxaf/fzf-tab
zstyle ":completion:*:git-checkout:*" sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'

# Do not remove
autoload -Uz compinit
compinit

# General plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# Addtional bindings
bindkey '^ ' autosuggest-accept

# Do not remove
zinit cdreplay -q

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# General aliases
alias ..='cd ..'
alias clear='clear -x'
alias l="ls -h"
alias ll="ls -ahl"
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
