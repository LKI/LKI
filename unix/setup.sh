#!/bin/sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Install bash-git-prompt
ln -s $DIR/bash-git-prompt ~/.bash-git-prompt
if [ -e ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi
cp .bashrc ~/.bashrc

# Install dotvim
ln -s $DIR/dotvim/vimrc ~/.vimrc
ln -s $DIR/dotvim ~/.vim

# Install .emacs.d
ln -s $DIR/emacs.d ~/.emacs.d

# Git config
cp $DIR/../.gitconfig ~/.gitconfig
cp $DIR/../.git-credentials ~/.git-credentials
