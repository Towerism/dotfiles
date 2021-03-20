# -*- mode: shell-script -*-
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

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

alias npm='/bin/npm'
alias tmux='tmux -u'

export EDITOR=nvim

source ~/.profile

export PATH=$HOME/.cargo/bin:$PATH
export DOCKER_CLIENT_TIMEOUT=120
export COMPOSE_HTTP_TIMEOUT=120

# restore terminal colors
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
source ~/.cache/wal/colors.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Map fd to enter vi-cmd-mode
bindkey fd vi-cmd-mode
export LIBGL_ALWAYS_INDIRECT=1
export DISPLAY=:0.0

if [ -f "$HOME/.system_specific_paths" ]; then
    source ~/.system_specific_paths
fi
source /usr/share/nvm/init-nvm.sh
