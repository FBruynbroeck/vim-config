My vim config
=============

Only works with vim >= 7.3

INSTALL
=======

```
cd ~
rm .vimrc
echo "so \$HOME/.vim/vimrc.vim" > .vimrc

rm -rf .vim
git clone git@github.com:FBruynbroeck/vim-config.git .vim

mkdir .vim/undofiles

oh-my-vim install -f=true $HOME/.vim/requires.txt
```
