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

# unlock ssh identity
eval $(keychain --quiet --eval ~/.ssh/id_rsa)

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

export EDITOR=nvim

source ~/.profile

export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

[ -f ~/.cargo/env ] && source ~/.cargo/env

if [ -f "$HOME/.system_specific_paths" ]; then
    source ~/.system_specific_paths
fi
eval `fnm env`

# restore terminal colors
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
source ~/.cache/wal/colors.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Map fd to enter vi-cmd-mode
bindkey fd vi-cmd-mode

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export ANDROID_HOME="$HOME/Android/Sdk"
PATH=$PATH:$ANDROID_HOME/tools; PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:/usr/bin/

export PATH=~/.local/share/gamejoltclient/bin:$PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/mfracker/.sdkman"
[[ -s "/home/mfracker/.sdkman/bin/sdkman-init.sh" ]] && source "/home/mfracker/.sdkman/bin/sdkman-init.sh"

# Created by `pipx` on 2023-06-25 19:48:09
export PATH="$PATH:/home/mfracker/.local/bin"
