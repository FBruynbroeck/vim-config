"Add comment mapping
noremap <S-c> :call EnhancedCommentify('', 'guess')<CR>
noremap <S-x> :call EnhancedCommentify('', 'comment')<CR>
"Map BufExplorer"
map <S-B> :BufExplorer<CR>
"NERDTree"
map <C-n> :NERDTreeFind<CR>
"Copy ctrl+c
map <C-c> "*y<CR>
"Gundo
nnoremap <F5> :GundoToggle<CR>
"Spell
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
"Ack
nmap <leader>a :Ack <cword><CR>
vmap <leader>a y:Ack <C-r>=fnameescape(@")<CR><CR>
