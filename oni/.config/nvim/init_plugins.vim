function! s:sharedPlugins()
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'dylanaraps/wal.vim'
  Plug 'sheerun/vim-polyglot'
  Plug 'SpaceVim/vim-swig'
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
endfunction

function! s:oniOnlyPlugins()

endfunction

function! s:terminalOnlyPlugins()
  Plug 'vim-airline/vim-airline'
endfunction

if exists("g:gui_oni")
  call plug#begin('~/.config/oni/plugins')
  call s:oniOnlyPlugins()
else
  call plug#begin('~/.config/nvim/plugged')
  call s:terminalOnlyPlugins()
endif

call s:sharedPlugins()

call plug#end()
