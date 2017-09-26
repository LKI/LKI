set -o vi

alias ..='cd ..'
alias bridgit="node '/c/zaihui/files/bridgit/index.js'"
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=${HOME}/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=${HOME}/.cnpmrc"
alias g='git'
alias gash='ssh -tt igate ssh -tt'
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
alias py="winpty python"
alias qgit='git'
alias reload="source ~/.profile"
alias sb2="source env2/bin/activate"
alias sb3="source env3/bin/activate"
alias sb="source env/bin/activate"
alias svb="cd /c/zaihui/beloved"
alias svc="cd /c/zaihui/compose"
alias svd="cd /c/zaihui/dudu"
alias svh="cd /c/zaihui/holygrail"
alias svk="cd /c/zaihui/kevin"
alias svl="cd /c/Code/lki.github.io"
alias svm="cd /c/Code/meican"
alias svn="cd /c/zaihui/tavern"
alias svr="cd /c/zaihui/server"
alias svs="cd /c/Code/scripts"
alias svt="cd /c/zaihui/servant"
alias svu="cd /c/zaihui/ubuntu"
alias svw="cd /c/zaihui/wechatpy"
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
