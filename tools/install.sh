#! /bin/sh
#
# install.sh
# Copyright (C) 2015 FBruynbroeck <francois.bruynbroeck@hotmail.com>
cd $HOME
echo "Installing vim-config..."
rm -rf .vim
git clone https://FBruynbroeck@bitbucket.org/FBruynbroeck/vim-config.git .vim
mkdir .vim/undofiles
echo "Installing .vimrc..."
rm .vimrc
echo "so \$HOME/.vim/vimrc.vim" > .vimrc
echo "Installing oh-my-vim..."
wget --no-check-certificate -O- https://raw.github.com/gawel/oh-my-vim/master/tools/install.sh | sh -
$HOME/.oh-my-vim/bin/oh-my-vim install -f=true $HOME/.vim/requires.txt
