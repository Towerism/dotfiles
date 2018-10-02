inoremap fd <Esc>
nnoremap fd <Esc>

if exists("g:gui_oni")
    call plug#begin('~/.config/oni/plugins')
else
    call plug#begin('~/.config/nvim/plugged')
endif

Plug 'tpope/vim-fugitive'

call plug#end()

