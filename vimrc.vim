
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

"Console Message ignore"
let g:pymode_lint_ignore="E501,E711,E712,C901"

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
let g:solarized_termcolors=256
"syntax enable
"set background=dark
colorscheme solarized

"Clipboard
set clipboard=unnamed

"ZCML"
autocmd BufRead,BufNewFile *.zcml :set ft=xml

" Remove rope of pymode
let g:pymode_rope = 0
let g:pymode_folding=0

"Jedi
let g:jedi#use_splits_not_buffers="right"
"let g:jedi#completions_enabled=0
let g:jedi#popup_on_dot = 0

" Template
let g:user="FBruynbroeck"
let g:email="francois.bruynbroeck@hotmail.com"
let g:license="LICENCE.txt"
let g:templates_directory=$HOME.'/.vim/templates'

"Reset longline color (oh-my-vim python profile)
augroup python
    au BufWinEnter *.py,*.py_tmpl let w:longline1=clearmatches()
    au BufWinEnter *.py,*.py_tmpl let w:longline2=clearmatches()
augroup END

"Fugitive GitLab domains
let g:fugitive_gitlab_domains = ['http://git.affinitic.be']

"Trac
let g:trac_domain = $TRAC_URL
let g:trac_command = '<C-x>'
