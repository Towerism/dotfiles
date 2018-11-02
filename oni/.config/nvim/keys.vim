:let mapleader=" "
nnoremap <SPACE> <Nop>

inoremap fd <Esc>
vnoremap fd <Esc>
" Use fd to exit insert mode in :term
tnoremap fd <C-\><C-n><C-w>q

nmap <leader>fed :e ~/.config/nvim/init.vim <CR>
" Have to reset airline after sourcing init.vim
nmap <leader>feR :source ~/.config/nvim/init.vim <CR> :AirlineToggle <CR> :AirlineToggle <CR>

nmap <A-q> :exe 'normal gqip' <CR>

nmap <leader>w <C-w>

nmap <leader>bn :bn <CR>
nmap <leader>bp :bp <CR>
nmap <leader>bd :bd <CR>
nmap <leader>bb :Buffers <CR>

nmap <leader>gs :Gstatus <CR>
nmap <leader>gd :Gdiff <CR>
nmap <leader>gc :Gcommit <CR>
nmap <leader>gr :Gread <CR>
nmap <leader>gp :Gpush <CR>

nmap <leader>fj :e . <CR>
nmap <leader>fr :NERDTreeFind <CR>
nmap <leader>fT :NERDTreeToggle <CR>

nmap <leader>pp :call fzf#run({ 'source': 'ls ~/source/repos', 'sink': function ('<sid>openProject'), 'down': '20%' }) <CR>
nmap <leader>pf :call <sid>projectFiles() <CR>

function! s:openProject(directory)
  exe 'cd ~/source/repos/' . a:directory
  call s:projectFiles()
  call feedkeys('$a')
endfunction

function! s:projectFiles()
  call fzf#run({ 'source': 'ag --hidden --ignore .git -g ""', 'down': '20%', 'sink': 'e' }) 
endfunction

function! SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
  autocmd!
  autocmd FileType cpp,c,vue call SetLSPShortcuts()
augroup END
