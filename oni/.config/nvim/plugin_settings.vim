autocmd FileType gitcommit if ! &previewwindow && expand('%:t') !~# 'index' | :DiffGitCached | endif

let g:airline_powerline_fonts = 1

let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1

set hidden
set signcolumn=yes
let g:coc_global_extensions=[ 'coc-angular', 'coc-css', 'coc-docker', 'coc-emmet', 'coc-eslint', 'coc-highlight', 'coc-html', 'coc-json', 'coc-prettier', 'coc-snippets', 'coc-tslint', 'coc-tsserver', 'coc-vetur', 'coc-rls', 'coc-omnisharp' ]

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c
