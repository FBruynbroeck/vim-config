"Add comment mapping
noremap <S-c> :call EnhancedCommentify('', 'guess')<CR>
noremap <S-x> :call EnhancedCommentify('', 'comment')<CR>
"Map BufExplorer"
map <S-B> :BufExplorer<CR>
nmap <Tab> :bn<Cr>
nmap <S-Tab> :bp<Cr>
"NERDTree"
map <C-n> :NERDTreeFind<CR>
"Copy ctrl+c
map <C-c> "*y<CR>
"Gundo
nnoremap <F5> :GundoToggle<CR>
"Spell
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
"CtrlP
nmap <leader>p :CtrlP<CR><C-\>w
vmap <leader>p y:CtrlP<CR><C-\>c
"Ack
nmap <leader>a :Ack! <cword><CR>
vmap <leader>a y:Ack! <C-r>=fnameescape(@")<CR><CR>
"Gitv
map <leader>g :Gitv<CR>
" Resize
map <leader>i :vertical resize +10<CR>
map <leader>o :vertical resize -10<CR>
"ALEFix
map <leader>f :ALEFix<CR>
map cn :cnext<CR>
"Tag my nickname
autocmd FileType changelog,rst nmap <silent> <C-l> :call Generate_author()<CR>
