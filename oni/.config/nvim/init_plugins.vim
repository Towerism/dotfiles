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
  Plug 'Shougo/echodoc.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'lepture/vim-jinja'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'sbdchd/neoformat'
endfunction

function! s:oniOnlyPlugins()

endfunction

function! s:terminalOnlyPlugins()
  Plug 'vim-airline/vim-airline'
  Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': './install.sh' }
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
