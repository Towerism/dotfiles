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

prompt pure

if [ -n "$INSIDE_EMACS" ]; then
    unset zle_bracketed_paste
fi

export TERM=xterm-256color
export ALTERNATE_EDITOR=""

alias vim='nvim'
alias vi='nvim'

export EDITOR=nvim

alias fuck='sudo $(fc -ln -1)'
alias stow-local='sudo stow -t /usr/local/bin'
alias startx='ssh-agent startx'

export PATH="$(ruby -r rubygems -e "puts Gem.user_dir")/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/scripts:$PATH"

# Make git an alias for hub (git extension allowing interface with GitHub)
eval "$(hub alias -s)"

source ~/.profile

if [ -f "$HOME/.system_specific_paths" ]; then
    source ~/.system_specific_paths
fi
source /usr/share/nvm/init-nvm.sh

# restore terminal colors
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
source ~/.cache/wal/colors.sh

