:let nvimhome = "~/.config/nvim"

source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/init_plugins.vim

if !exists("g:gui_oni")
    colorscheme wal
endif

set autochdir
set number
set noswapfile
set smartcase

set splitright
set splitbelow

" Turn off statusbar, because it is externalized
set noshowmode
set noruler
set laststatus=0
set noshowcmd

" Enable GUI mouse behavior
set mouse=a

" All config settings after this point 
" can be removed, once an Oni config option is added.

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>

" Default tab settings
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

