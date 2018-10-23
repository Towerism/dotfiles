:let mapleader=" "
nnoremap <SPACE> <Nop>

inoremap fd <Esc>
vnoremap fd <Esc>

nmap <C-\> :e ~/.config/nvim/init.vim <CR>
nmap <C-S-\|> :source ~/.config/nvim/init.vim <CR>

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
nmap <leader>pf :GFiles <CR>

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>

function! s:openProject(directory)
    exe 'cd ~/source/repos/' . a:directory
    exe 'GFiles'
    call feedkeys('$a')
endfunction
