:let nvimhome = "~/.config/nvim"

source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/init_plugins.vim

if !exists("g:gui_oni")
    colorscheme wal
endif

