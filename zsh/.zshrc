# -*- mode: shell-script -*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# restore terminal colors
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
source ~/.cache/wal/colors.sh

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# unlock ssh identity
eval $(keychain --quiet --eval ~/.ssh/id_rsa)

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/htp508/.zshrc'

autoload -Uz compinit
compinit

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
alias ssh='TERM=xterm-color ssh'
alias oni2='/Applications/Onivim2.app/Contents/MacOS/Oni2'

export EDITOR=nvim

source ~/.profile

export PATH=$HOME/.cargo/bin:$PATH
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

if [ -f "$HOME/.system_specific_paths" ]; then
    source ~/.system_specific_paths
fi

if [ -f /usr/local/opt/nvm/nvm.sh ]; then
    export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
    source /usr/local/opt/nvm/nvm.sh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Map fd to enter vi-cmd-mode
bindkey fd vi-cmd-mode
# End of lines added by compinstall

export PATH="/usr/local/Cellar/node@10/10.16.0/bin:/usr/local/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
nvm use default
