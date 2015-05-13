#!/bin/sh

pwd=`pwd`

# Install bash-git-prompt
ln -s $pwd/bash-git-prompt ~/.bash-git-prompt
if [ -e ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
cp .bashrc ~/.bashrc

# Install dotvim
ln -s $pwd/dotvim/vimrc ~/.vimrc
ln -s $pwd/dotvim ~/.vim

# Install prelude
ln -s $pwd/prelude ~/.emacs.d
