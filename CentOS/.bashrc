# .bashrc

if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# Directory Color

# Alias 
alias la='ls -al --color'
alias vi='vim'
alias ..='cd ..'

