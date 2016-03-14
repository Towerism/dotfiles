# -*- mode: shell-script -*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

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

export PATH="$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH"
eval $(keychain --eval --agents ssh -Q --quiet com.github)
