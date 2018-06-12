# enable vi mode
set -o vi

# general aliases
alias ..='cd ..'
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=${HOME}/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=${HOME}/.cnpmrc"
alias la='/bin/ls -ah --color'
alias ll='/bin/ls -lh --color'
alias ls='/bin/ls --color'
alias please='sudo'
alias py="winpty python"
alias reload="source ~/.profile"
alias ta='tmux attach'
alias vi='vim'

# git aliases
alias g='git'
alias gc='git remote show | xargs -I{} git remote prune {} && git gc'
alias it="git"
alias lg='git logg'
alias qgit='git'

# python aliases
alias pm="python manage.py"
alias sb="source env/bin/activate"
alias sb2="source env2/bin/activate"
alias sb3="source env3/bin/activate"

# vagrant aliases
alias vgst="vagrant global-status"
alias vr="vagrant"
alias vst="vagrant status"
alias vu="vagrant up"

# docker aliases from tcnksm/docker-alias

alias dl="docker ps -l -q"
alias dps="docker ps"
alias dpa="docker ps -a"
alias di="docker images"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dkd="docker run -d -P"
alias dki="docker run -i -t -P"
alias dex="docker exec -i -t"

dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
dstop() { docker stop $(docker ps -a -q); }
drm() { docker rm $(docker ps -a -q); }
dri() { docker rmi $(docker images -q); }
dbu() { docker build -t=$1 .; }
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# --- --- --- #

# set path
export PATH=~/.virtualenvs/py35/Scripts:~/.myconf/scripts:${PATH}

# my aliases
alias gsh='ssh -tt gate ssh -l zaihui -tt'
alias gush='ssh -tt gate ssh -l ubuntu -tt'
alias ush='ssh -tt ga ssh -l ubuntu -tt'
alias ish='ssh -tt igate ssh -tt'
alias pt="cd ${REPO} && flake8 ygg && cd ygg && python manage.py test"
alias ygg="cd ${REPO}/ygg"

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
alias svq="cd /c/zaihui/squirrel"
alias svr="cd /c/zaihui/server"
alias svs="cd /c/Code/scripts"
alias svt="cd /c/zaihui/servant"
alias svu="cd /c/zaihui/ubuntu"
alias svv="cd /c/zaihui/valhalla"
alias svw="cd /c/zaihui/wechatpy"
alias svz="cd /c/zaihui/zeus"

