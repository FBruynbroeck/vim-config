
" Added by oh-my-vim

" Change the default leader
let mapleader = ","

" Skip upgrade of oh-my-vim itself during upgrades
" let g:ohmyvim_skip_upgrade=1

" Use :OhMyVim profiles to list all available profiles with a description
" let profiles = ['defaults', 'django', 'erl', 'friendpaste', 'git', 'makefile', 'map', 'pyramid', 'python', 'ranger', 'tmpl', 'utf8']
let profiles = ['defaults', 'git', 'map', 'python']

" Path to oh-my-vim binary (take care of it if you are using a virtualenv)
let g:ohmyvim="oh-my-vim"

" load oh-my-vim
source $HOME/.vim/ohmyvim/ohmyvim.vim

" End of oh-my-vim required stuff

" Put your custom stuff bellow

"NERDTree"
let NERDTreeIgnore=['\.pyc$']
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let g:NERDTreeWinPos="right"
let g:netrw_liststyle=3
    "Fix clipboard netrw bug
let g:netrw_dirhistmax=0

"Add mapping file
so $HOME/.vim/map.vim

"Allow undo even when closed file
set undofile
set undodir=$HOME/.vim/undofiles

"Split config
    "vs right
set splitright
    "split below
set splitbelow

"Backspace
set backspace=2

"Solarized
let g:solarized_termtrans=1
colorscheme solarized

"Clipboard
set clipboard=unnamed

"ZCML"
autocmd BufRead,BufNewFile *.zcml :set ft=xml
"zsh-theme"
autocmd BufRead,BufNewFile *.zsh-theme :set ft=zsh
"markdown"
autocmd BufRead,BufNewFile HISTORY.txt :set ft=changelog
autocmd BufRead,BufNewFile CHANGES.txt :set ft=changelog
"zpt
autocmd BufRead,BufNewFile *.pt,*.cpt :set ft=zpt syntax=html

" Remove rope of pymode
let g:pymode_rope = 0
let g:pymode_folding=0
" Disable lint (pep8/pyflakes) from python-mode
let g:pymode_lint = 0
" Disable length limit
let g:pymode_options_max_line_length= 0

"Jedi
"let g:jedi#use_splits_not_buffers="right"
"let g:jedi#completions_enabled=0
let g:jedi#completions_command = "<c-n>"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = 0
let g:jedi#popup_select_first = 0
let g:jedi#smart_auto_mappings = 0
"let g:jedi#use_tabs_not_buffers = 0

"Template
let g:user=$GIT_AUTHOR_NAME
let g:email=$GIT_AUTHOR_EMAIL
let g:license="LICENCE.txt"
let g:templates_directory=$HOME.'/.vim/templates'

"Snipmate
    "Force to use only this directory
let g:snippets_dir=$HOME.'/.vim/snippets'
"let g:snips_trigger_key = '<tab>'
"let g:snips_trigger_key_backwards = '<s-tab>'

" SuperTab
"let g:SuperTabDefaultCompletionType = "context"
"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" Reset longline color (oh-my-vim python profile)
augroup python
    au BufWinEnter *.py,*.py_tmpl let w:longline1=clearmatches()
    au BufWinEnter *.py,*.py_tmpl let w:longline2=clearmatches()
augroup END

" Fugitive GitLab domains
let g:fugitive_gitlab_domains = ['http://git.affinitic.be', 'http://gitlab.interne.arsia.be']

"Trac
let g:trac_domain = $TRAC_URL
let g:trac_command = 'gt'

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

" Auto spell when .txt
autocmd BufEnter *.txt set spell

" ALE
let g:ale_linters = {
            \  'python': ['flake8'],
            \}
let g:ale_fixers = {
            \  'python': ['autopep8'],
            \}
let g:ale_open_list = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%] [%code%]'
let g:ale_sign_column_always = 1
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_list_window_size = 3

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
set list lcs=tab:▸·

" Disable python-mod indent because use vim-python-pep8-indent
let g:pymode_indent = 0

" Ack autoclose and highlight
let g:ack_autoclose = 1
let g:ackhighlight = 1

" DevIcons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Markdown with grip
let vim_markdown_preview_github=1

" Ignore quickfix in the buffer
autocmd FileType qf set nobuflisted

" Close qf if it's the last window
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END

" Tag my nickname
function! Generate_author()
    call append(getpos(".")[1], "  [".g:user."]")
endfunction
