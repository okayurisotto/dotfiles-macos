export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export WWW_HOME='https://www.google.com/'

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="$PNPM_HOME:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/ed/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/python@3.10/bin:$PATH"

eval "$(brew shellenv)"

export EDITOR="$(which nvim)"
export FZF_DEFAULT_COMMAND="$(which fd --no-follow)"
export FZF_DEFAULT_OPTS="$(cat $XDG_CONFIG_HOME/fzf/config)"
export LANG="en_US.UTF-8"

alias g='git'
alias t='tmux'
alias icat='mpv --pause=yes'
alias ls='exa'
alias tree='exa --tree'
alias v='nvim'

autoload -U compinit && compinit
bindkey -e
eval "$(starship init zsh)"
typeset -U PATH
zstyle ':completion:*' menu select
