autocmd FileType gitcommit if ! &previewwindow && expand('%:t') !~# 'index' | :DiffGitCached | endif

let g:airline_powerline_fonts = 1

let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1

set hidden
set signcolumn=yes
