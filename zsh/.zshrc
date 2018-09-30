# -*- mode: shell-script -*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export IDENTITY_EMAIL="martin.frackerjr@gmail.com"

IDENTITIES=(id_rsa)

LOGINSSH=$HOME/.loginssh
if [[ -a "$LOGINSSH" ]]; then
    for identity in $IDENTITIES; do
        ($LOGINSSH $identity &)
    done
fi

# Completion for kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

if [ -n "$INSIDE_EMACS" ]; then
    unset zle_bracketed_paste
fi

autoload -Uz promptinit
promptinit
prompt minimal

export TERM=xterm-256color
export ALTERNATE_EDITOR=""

alias e='emacsclient -t'
alias ec='emacsclient -c'
alias vim='emacsclient -t'
alias vi='emacsclient -t'

export EDITOR=vim

alias fuck='sudo $(fc -ln -1)'
alias stow-local='sudo stow -t /usr/local/bin'

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

