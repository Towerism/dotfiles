:let nvimhome = "~/.config/nvim"

source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/init_plugins.vim

if !exists("g:gui_oni")
    colorscheme wal
endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

