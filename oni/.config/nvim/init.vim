:let mapleader=" "
nnoremap <SPACE> <Nop>

inoremap fd <Esc>
nnoremap fd <Esc>

nmap <C-\> :e ~/.config/nvim/init.vim <CR>
nmap <C-S-\|> :source ~/.config/nvim/init.vim <CR>

nmap <leader>w <C-w>

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

