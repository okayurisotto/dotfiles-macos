# system {{{

typeset -U PATH

autoload -U compinit && compinit
zstyle ':completion:*' menu select

setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt share_history

bindkey -e

eval "$(starship init zsh)" &> /dev/null

# }}}

# alias {{{

alias fzf="fzf --color='prompt:cyan,pointer:cyan,marker:cyan,gutter:-1'"
alias g='git'
alias grep='rg'
alias icat='mpv --pause=yes'
alias ls='exa'
alias tree='exa --tree'
alias v='nvim'

# }}}
