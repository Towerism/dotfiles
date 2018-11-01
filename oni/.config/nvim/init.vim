:let nvimhome = "~/.config/nvim"

source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/init_plugins.vim

if !exists("g:gui_oni")
    colorscheme wal
endif

autocmd FileType gitcommit if ! &previewwindow && expand('%:t') !~# 'index' | :DiffGitCached | endif

let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1

let g:airline_powerline_fonts = 1

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

" Default tab settings
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab
