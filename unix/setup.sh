#!/bin/sh

# Install bash-git-prompt
ln -s bash-git-prompt ~/.bash-git-prompt
if [ -e ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
cp .bashrc ~/.bashrc

# Install dotvim
ln -s dotvim/vimrc ~/.vimrc

# Install prelude
ln -s prelude ~/.emacs.d
