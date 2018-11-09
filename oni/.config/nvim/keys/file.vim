nmap <leader>fed :e ~/.config/nvim/init.vim <CR>
" Have to reset airline after sourcing init.vim
nmap <leader>feR :source ~/.config/nvim/init.vim <CR> :call <sid>resetAirline() <CR>

function! s:resetAirline()
  if !exists("g:gui_oni")
    exe ':AirlineToggle'
    exe ':AirlineToggle'
  endif
endfunction

nmap <leader>fj :e . <CR>
nmap <leader>fr :NERDTreeFind <CR>
nmap <leader>fT :NERDTreeToggle <CR>
