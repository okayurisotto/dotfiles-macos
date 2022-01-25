# export {{{

# path {{{

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"

# }}}

# misc {{{

export EDITOR="$(which nvim)"

export WWW_HOME='https://www.google.com/'

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export IPFS_PATH="$XDG_DATA_HOME/ipfs"

# }}}

# }}}

# Homebrew {{{

eval "$(brew shellenv)"

# }}}
