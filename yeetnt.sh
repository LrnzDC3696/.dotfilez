#!/bin/bash

sudo pacman -S --noconfirm git

# https://www.atlassian.com/git/tutorials/dotfiles
{
    git clone --bare https://github.com/LrnzDC3696/dotfiles $HOME/.cfg

    function config {
        /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
    }

    mkdir -p .config-backup
    config checkout

    if [ $? = 0 ]; then
        echo "Checked out config.";
    else
        echo "Backing up pre-existing dot files.";
        config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
    fi;

    config checkout
    config config status.showUntrackedFiles no
    echo "done setting up stuff"
} || { echo "bruh" }

run the installer script

chmod +x ~/install.sh
./install.sh
