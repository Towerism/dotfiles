inoremap fd <Esc>
nnoremap fd <Esc>

nnoremap <C-\> :e ~/.config/nvim/init.vim <CR>
nnoremap <C-S-\|> :source ~/.config/nvim/init.vim <CR>

if exists("g:gui_oni")
    call plug#begin('~/.config/oni/plugins')
else
    call plug#begin('~/.config/nvim/plugged')
endif

Plug 'tpope/vim-fugitive'
Plug 'dylanaraps/wal.vim'

call plug#end()

if !exists("g:gui_oni")
    colorscheme wal
endif

