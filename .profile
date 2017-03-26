set -o vi

alias ..='cd ..'
alias ad1="arc diff HEAD~1"
alias ado="arc diff origin/dev"
alias bridgit="node '/c/zaihui/files/bridgit/index.js'"
alias g='git'
alias it="git"
alias la='/bin/ls -ah --color'
alias ll='/bin/ls -lh --color'
alias ls='/bin/ls --color'
alias please='sudo'
alias pm="python manage.py"
alias pt="cd ${REPO} && flake8 ygg && cd ygg && python manage.py test"
alias qgit='git'
alias reload="source ~/.profile"
alias sb="source env/bin/activate"
alias ta='tmux attach'
alias vgst="vagrant global-status"
alias vi='vim'
alias vim="gvim"
alias vr="vagrant"
alias vsb="source ~/.virtualenvs/server/bin/activate"
alias vst="vagrant status"
alias vu="vagrant up"
alias ygg="cd ${REPO}/ygg"
alias ymym="git dfl CURRENT_PROD | grep '^A.*migra.*'"

export PATH=~/.myconf/scripts:${PATH}
