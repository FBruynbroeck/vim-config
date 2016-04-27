
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

" Remove rope of pymode
let g:pymode_rope = 0
let g:pymode_folding=0
" Disable lint (pep8/pyflakes) from python-mode
let g:pymode_lint = 0

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

"Reset longline color (oh-my-vim python profile)
augroup python
    au BufWinEnter *.py,*.py_tmpl let w:longline1=clearmatches()
    au BufWinEnter *.py,*.py_tmpl let w:longline2=clearmatches()
augroup END

"Fugitive GitLab domains
let g:fugitive_gitlab_domains = ['http://git.affinitic.be']

"Trac
let g:trac_domain = $TRAC_URL
let g:trac_command = 'gt'

" Airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

"Auto spell when .txt
autocmd BufEnter *.txt set spell

" Syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_loc_list_height=6
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute ", "is not recognized!", "discarding unexpected", "trimming empty"]
let g:syntastic_python_flake8_args = "--ignore=E501,E711,E712,N80,N81 --max-complexity 17"
let g:syntastic_python_checkers=['flake8']
