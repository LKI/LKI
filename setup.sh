#!/bin/sh
set -e

git clone --recurse-submodules https://github.com/LKI/myconf.git ~/.myconf
DIR="~/.myconf"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

function bak {
  if [ -e $1 ]
  then
    mv $1 $1.bak
  fi
}

# Install dotvim
bak .vimrc
bak .vim
bak .ideavimrc
ln -sf ${DIR}/dotvim/vimrc ~/.vimrc
ln -sf ${DIR}/dotvim ~/.vim
ln -sf ${DIR}/.ideavimrc ~/.ideavimrc

# Install .emacs.d
# bak .emacs.d
# ln -s ${DIR}/emacs.d ~/.emacs.d

# Install configs
ln -sf ${DIR}/.gitconfig ~/.gitconfig
ln -sf ${DIR}/.tmux.conf ~/.tmux.conf
ln -sf ${DIR}/.zshrc ~/.zshrc

echo "Setup success."
