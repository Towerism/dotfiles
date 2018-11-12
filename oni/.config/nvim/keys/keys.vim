:let mapleader=" "
nnoremap <SPACE> <Nop>

runtime keys/buffer.vim
runtime keys/file.vim
runtime keys/git.vim
runtime keys/language.vim
runtime keys/project.vim
runtime keys/window.vim

inoremap <Esc> <Nop>
vnoremap <Esc> <Nop>
inoremap fd <Esc>
vnoremap fd <Esc>
" Use fd to exit insert mode in :term
tnoremap fd <C-\><C-n><C-w>q

nmap <A-q> :exe 'normal gqip' <CR>
