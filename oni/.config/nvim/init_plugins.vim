function! s:sharedPlugins()
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'sheerun/vim-polyglot'
  Plug 'SpaceVim/vim-swig'
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'Shougo/echodoc.vim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'sbdchd/neoformat'
  Plug 'tpope/vim-sleuth'
endfunction

function! s:terminalOnlyPlugins()
  Plug 'vim-airline/vim-airline'
  Plug 'dylanaraps/wal.vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'github/copilot.vim', { 'branch': 'release' }
endfunction

call plug#begin('~/.config/nvim/plugged')
if !exists("veonim")
  call s:terminalOnlyPlugins()
endif

call s:sharedPlugins()

call plug#end()

if exists('veonim')
  let g:vscode_extensions = [
    \'vscode.typescript-language-features',
    \'vscode.json-language-features',
    \'vscode.css-language-features',
    \'vscode.markdown-language-features',
    \'vscode.html-language-features',
    \'vscode.php-language-features',
    \'rust-lang.rust',
    \'ms-python.python',
    \'octref.vetur',
    \'sysoev.language-stylus',
  \]
endif
