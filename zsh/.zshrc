# -*- mode: shell-script -*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# unlock ssh identity
eval $(keychain --quiet --eval ~/.ssh/id_rsa)

# set up kitty autocomplete
compinit
kitty + complete setup zsh | source /dev/stdin

export ALTERNATE_EDITOR=""
export XDG_CONFIG_HOME="$HOME/.config"


export MPD_HOST=localhost
export MPD_PORT=6600

alias fuck='sudo $(fc -ln -1)'
alias stow-local='sudo stow -t /usr/local/bin'
alias startx='ssh-agent startx'
alias toclip='xclip -selection clipboard'
alias vim='nvim'
alias vi='nvim'
alias mem='~/.scripts/search-zhistory'

export EDITOR=nvim

source ~/.profile

# set vi bindings in terminal
zstyle ':prezto:module:editor' key-bindings 'vi'

if [ -f "$HOME/.system_specific_paths" ]; then
    source ~/.system_specific_paths
fi
source /usr/share/nvm/init-nvm.sh

# restore terminal colors
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
source ~/.cache/wal/colors.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
