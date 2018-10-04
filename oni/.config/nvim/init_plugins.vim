if exists("g:gui_oni")
    call plug#begin('~/.config/oni/plugins')
else
    call plug#begin('~/.config/nvim/plugged')
endif

Plug 'tpope/vim-fugitive'
Plug 'dylanaraps/wal.vim'
Plug 'sheerun/vim-polyglot'
Plug 'SpaceVim/vim-swig'

call plug#end()
