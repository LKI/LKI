#!/usr/bin/env bash
# a setup script to initialize the dev-environment for lirian

set -e

usage () {
    echo "usage: ${0} <command>"
    echo "command:"
    echo "         install:   install the configuration"
    echo "         uninstall: uninstall the configuration"
    exit 1
}

home="`echo ~`"
confDir="${home}/.myconf"

install () {
    if [[ -z "`command -v git`" ]];
    then
        echo "please first install git"
    fi

    if [[ -d ${confDir} ]];
    then
        echo "${confDir} already exists. please uninstall first"
    fi

    git clone --recurse-submodules https://github.com/LKI/myconf.git ${confDir}

    # install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    # make soft links
    ln -sf ${confDir}/.gitconfig   ${home}/.gitconfig
    ln -sf ${confDir}/.ideavimrc   ${home}/.ideavimrc
    ln -sf ${confDir}/.profile     ${home}/.profile
    ln -sf ${confDir}/.tmux.conf   ${home}/.tmux.conf
    ln -sf ${confDir}/dotvim       ${home}/.vim
    ln -sf ${confDir}/dotvim/vimrc ${home}/.vimrc

    echo 'source ~/.profile' >> ${home}/.zshrc
}

uninstall () {
    rm ${home}/.gitconfig || true
    rm ${home}/.ideavimrc || true
    rm ${home}/.profile || true
    rm ${home}/.tmux.conf || true
    rm ${home}/.vim || true
    rm ${home}/.vimrc || true

    sed -i '/^source ~\/.profile/d' ${home}/.zshrc

    rm -rf ${confDir}
}

if [[ ${#} -lt 1 ]];
then
    usage
fi

if [[ "${1}" == "install" ]];
then
    echo "installing"
    install
    echo "done"
    exit 0
fi

if [[ "${1}" == "uninstall" ]];
then
    echo "uninstalling"
    uninstall
    echo "done"
    exit 0
fi

usage
