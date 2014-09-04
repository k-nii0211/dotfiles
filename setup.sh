#!/bin/sh

source ~/dotfiles/func
check_cmds
setup_oh_my_zsh

for item in `cat dotfiles.lst`; do
    if [ -f ~/$item  -a ! -h ~/$item ]; then
        cp -irpv ~/${item}{,.pre_setup}
        rm -rf ~/$item
    fi
    ln -s ~/dotfiles/$item ~ 2> /dev/null
done

setup_rbenv
setup_pip
setup_neobundle

echo "setup done."
echo "setup done."
