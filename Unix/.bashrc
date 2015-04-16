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
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -a --color'
alias vi='vim'
alias ..='cd ..'

