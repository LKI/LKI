set -o vi

alias ..='cd ..'
alias ad1="arc diff HEAD~1"
alias ado="arc diff origin/dev"
alias bridgit="node '/c/zaihui/files/bridgit/index.js'"
alias g='git'
alias gc='git remote show | xargs -I{} git remote prune {} && git gc'
alias it="git"
alias kt="env/Scripts/python -m unittest"
alias la='/bin/ls -ah --color'
alias lg='git logg'
alias ll='/bin/ls -lh --color'
alias ls='/bin/ls --color'
alias please='sudo'
alias pm="python manage.py"
alias pt="cd ${REPO} && flake8 ygg && cd ygg && python manage.py test"
alias qgit='git'
alias reload="source ~/.profile"
alias sb="source env/bin/activate"
alias svk="cd /c/zaihui/kevin"
alias svr="cd /c/zaihui/server"
alias svt="cd /c/zaihui/servant"
alias svu="cd /c/zaihui/ubuntu"
alias ta='tmux attach'
alias vgst="vagrant global-status"
alias vi='vim'
alias vr="vagrant"
alias vsb="source ~/.virtualenvs/server/bin/activate"
alias vst="vagrant status"
alias vu="vagrant up"
alias ygg="cd ${REPO}/ygg"
alias ymym="git dfl CURRENT_PROD | grep '^A.*migra.*'"

export PATH=~/.myconf/scripts:${PATH}
