#!/bin/sh

DIR=$( cd "$( dirname "$0" )" && pwd )

# Install bashrc
if [ -e ~/.bashrc ]
then
    echo "backup old .bashrc to .bashrc.bak"
    mv ~/.bashrc ~/.bashrc.bak
fi
cp $DIR/.bashrc ~/.bashrc

# Install dotvim
ln -sf $DIR/dotvim/vimrc ~/.vimrc
ln -sf $DIR/dotvim ~/.vim

# Install .emacs.d
if [ -e ~/.emacs.d ]
then
    mv ~/.emacs.d ~/.emacs.d.bak
fi
ln -s $DIR/emacs.d ~/.emacs.d

# Install .gitconfig
ln -sf $DIR/../.gitconfig ~/.gitconfig

# Install .tmux.conf
ln -sf $DIR/.tmux.conf ~/.tmux.conf

echo "Setup success."
