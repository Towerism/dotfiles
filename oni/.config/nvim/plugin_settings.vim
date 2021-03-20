autocmd FileType gitcommit if ! &previewwindow && expand('%:t') !~# 'index' | :DiffGitCached | endif

let g:airline_powerline_fonts = 1

let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1
let g:rooter_cd_cmd = "lcd"

set hidden
set signcolumn=yes
let typescriptLanguageServer = ['javascript-typescript-stdio']

let g:LanguageClient_serverCommands = {
  \ 'vue': ['vls'],
  \ 'cpp': ['clangd'],
  \ 'javascript': typescriptLanguageServer,
  \ 'javascript.jsx': typescriptLanguageServer,
  \ 'typescript': typescriptLanguageServer,
  \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
  \ }

let g:deoplete#enable_at_startup = 1
