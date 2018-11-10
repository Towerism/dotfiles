autocmd FileType gitcommit if ! &previewwindow && expand('%:t') !~# 'index' | :DiffGitCached | endif

let g:airline_powerline_fonts = 1

let g:rooter_resolve_links = 1
let g:rooter_silent_chdir = 1
let g:rooter_use_lcd = 1

set hidden
set signcolumn=yes
let typescriptLanguageServer = ['typescript-language-server', '--stdio']

let g:LanguageClient_serverCommands = {
  \ 'vue': ['vls'],
  \ 'cpp': ['clangd'],
  \ 'javascript': typescriptLanguageServer,
  \ 'javascript.jsx': typescriptLanguageServer,
  \ 'typescript': typescriptLanguageServer,
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ }

let g:deoplete#enable_at_startup = 1
