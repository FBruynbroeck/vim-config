My vim config
=============

Only works with vim >= 7.4

Installation
============

```
$ wget --no-check-certificate -O- https://raw.githubusercontent.com/FBruynbroeck/vim-config/master/tools/install.sh | sh -
```

Warning
=======

This is my personal configuration of vim, so don't forget to change the templates in the templates folder and variable (user/email/license) in the vimrc.vim file.

vim-airline
===========

Download "Monaco for Powerline.otf" (https://gist.github.com/baopham/1838072).

Install this font on your system and then apply it in iTerm2 through
iTerm -> preferences -> profiles -> text

I've chosen 12pt as font-size for my setup, so apply PowerLine for Regular Font and Non-ASCII Font by clicking each Change Font button and select "Monaco for Powerline".

ack.vim
=======

Install ack. (brew install ack)

syntastic
=========

Install jshint. (brew install node ; sudo npm install -g jshint)

Install pyflakes, pep8, flake8.
