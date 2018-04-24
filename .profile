set -o vi

alias ..='cd ..'
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=${HOME}/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=${HOME}/.cnpmrc"
alias g='git'
alias gc='git remote show | xargs -I{} git remote prune {} && git gc'
alias gsh='ssh -tt gate ssh -l zaihui -tt'
alias ish='ssh -tt igate ssh -tt'
alias it="git"
alias kt="env/Scripts/python -m unittest"
alias la='/bin/ls -ah --color'
alias lg='git logg'
alias ll='/bin/ls -lh --color'
alias ls='/bin/ls --color'
alias please='sudo'
alias pm="python manage.py"
alias py="winpty python"
alias qgit='git'
alias reload="source ~/.profile"
alias sb2="source env2/bin/activate"
alias sb3="source env3/bin/activate"
alias sb="source env/bin/activate"
alias sva="cd /c/code/danmaboy"
alias svb="cd /c/zaihui/beloved"
alias svc="cd /c/zaihui/compose"
alias svd="cd /c/zaihui/dudu"
alias sve="cd /c/Code/Twenty-four"
alias svf="cd /c/zaihui/faker"
alias svh="cd /c/zaihui/holygrail"
alias svk="cd /c/zaihui/kevin"
alias svl="cd /c/Code/lki.github.io"
alias svm="cd /c/Code/meican"
alias svn="cd /c/zaihui/tavern"
alias svr="cd /c/zaihui/server"
alias svs="cd /c/Code/scripts"
alias svt="cd /c/zaihui/servant"
alias svu="cd /c/zaihui/ubuntu"
alias svv="cd /c/zaihui/valhalla"
alias svw="cd /c/zaihui/wechatpy"
alias ta='tmux attach'
alias vgst="vagrant global-status"
alias vi='vim'
alias vr="vagrant"
alias vsb="source ~/.virtualenvs/server/bin/activate"
alias vst="vagrant status"
alias vu="vagrant up"

export PATH=~/.virtualenvs/py35/Scripts:~/.myconf/scripts:${PATH}

