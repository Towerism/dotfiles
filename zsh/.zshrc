# -*- mode: shell-script -*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export IDENTITY_EMAIL="martin.frackerjr@gmail.com"

IDENTITIES=(id_rsa)

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if [ -n "$INSIDE_EMACS" ]; then
    unset zle_bracketed_paste
fi

# Customize to your needs...

for config_file ($HOME/.yadr/zsh/*.zsh) source $config_file
prompt steeef

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

LOGINSSH=$HOME/.loginssh
if [[ -a "$LOGINSSH" ]]; then
    printf "unlocking private keys... "
    for identity in $IDENTITIES; do
        $LOGINSSH $identity
    done
    echo "done"

    # disable prezto identity intialization
    zstyle ':prezto:module:ssh:load' identities ''
fi

# Make git an alias for hub (git extension allowing interface with GitHub)
eval "$(hub alias -s)"

source ~/.profile

if [ -f "$HOME/.system_specific_paths" ]; then
    source ~/.system_specific_paths
fi
source /usr/share/nvm/init-nvm.sh
