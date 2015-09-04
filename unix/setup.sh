#!/bin/sh

DIR=$( cd "$( dirname "$0" )" && pwd )

# Install bash-git-prompt
if [ -e ~/.bash-git-prompt ]
then
    echo ".bash-git-prompt exist."
else
    ln -s $DIR/bash-git-prompt ~/.bash-git-prompt
fi

# Install bashrc
if [ -e ~/.bashrc ]
then
    echo "backup old .bashrc to .bashrc.bak"
    mv ~/.bashrc ~/.bashrc.bak
fi
cp $DIR/.bashrc ~/.bashrc

# Install dotvim
if [ -e ~/.vimrc ]
then
    echo ".vimrc exists."
else
    ln -s $DIR/dotvim/vimrc ~/.vimrc
    ln -s $DIR/dotvim ~/.vim
fi

# Install .emacs.d
if [ -e ~/.emacs.d ]
then
    mv ~/.emacs.d ~/.emacs.d.bak
fi
ln -s $DIR/emacs.d ~/.emacs.d

# Install .gitconfig
cp $DIR/../.gitconfig ~/.gitconfig
cp $DIR/../.git-credentials ~/.git-credentials

# Install .tmux.conf
if [ -e ~/.tmux.conf ]
then
    echo ".tmux.conf exist."
else
    ln -s $DIR/tmux.conf ~/.tmux.conf
fi

echo "Setup success."
