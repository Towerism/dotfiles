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
