" initialize pathogen
execute pathogen#infect()
syntax on

" on save file format file
autocmd BufReadPre * :normal gg=G<c-o>

" colorscheme stuff
set t_Co=16
syntax enable
set background=dark
colorscheme solarized

" editing preferences
set guifont=Consolas:h10:cANSI
set nocompatible
set nowrap
set tabstop=4
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smartindent
set smarttab
set hlsearch
set incsearch
highlight Comment gui=italic
filetype plugin indent on

" custom macros
nnoremap /r :set relativenumber!<Cr>
inoremap jk <Esc>
inoremap <Esc> <NOP>
" disable arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
" tab navigation
nnoremap L gt
nnoremap H gT
" pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" misc
nnoremap <F4> :sp %<.h<Cr>
nnoremap ;; A;<Esc>
" open template cpp file
let mapleader=","
noremap <Leader>c :call ToggleHeader()<Cr>
function! ToggleHeader()
	if (expand('%:e') == 'cpp')
		:e %:r.h
	elseif(expand('%:e') == 'h')
		:e %:r.cpp
	else
		echo("Not in a cpp file")
	endif
endfunc
" matching brace and indent cursor
inoremap {<CR> {<cr>}<c-o>O
inoremap [<CR> [<cr>]<c-o>O
inoremap (<CR> (<cr>)<c-o>O

" auto header guard h/hpp files
function! s:insert_gates()
    let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
    execute "normal! i#ifndef " . gatename
    execute "normal! o#define " . gatename . "\n\n\n"
    execute "normal! Go#endif // " . gatename
    execute "normal! 3j"
    normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
