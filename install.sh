#!/bin/bash
source ~/.vars.sh

# Setting up the log file
LOG_FILE=~/install_progress_log.txt

if [[ ! -f LOG_FILE ]]
then
    touch $LOG_FILE
fi

function check_n_log {
    if type -p $1 > /dev/null; then
        echo "$1 Installed" >> $log_file
    else; then
        echo "$1 FAILED TO INSTALL!!!" >> $log_file
    fi
}

function custom_install {
    sudo pacman -S --noconfirm $1
    check_n_log $1
}

# terminal stuff
custom_install zsh

custom_install tmux
custom_install neovim
custom_install xclip

custom_install git
custom_install gh

custom_install python
custom_install npm

custom_install github-cli

# commonly used non usefull stuff
custom_install noto-fonts-emoji
custom_install tree
custom_install neofetch
custom_install cmatrix
custom_install fzf

# keyboard related stuff
custom_install xorg-xmodmap
custom_install xorg-xev
custom_install xorg-setkbmap
custom_install xorg-xset

# custom_installing yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
check_n_log yay

# custom_installing google
sudo pacman -S --needed --noconfirm base-devel git
yay -S google-chrome
check_n_log google-chrome

# insalling gotop
yay -S gotop
check_n_log gotop

# custom_installing discord
sudo pacman -s --noconfirm discord
git clone https://github.com/betterdiscord/betterdiscord.git
cd betterdiscord
npm custom_install
npm run build
npm run inject

# =======================================

# setup git
gh auth login

# Make the code directory
if $BASE
then
    mkdir -p $BASE/Codes
    mkdir -p $BASE/Codes/scripts
fi

# set zsh to be default shell
if [ ! -r /usr/bin/zsh ]
then
    sudo pacman -S --noconfirm zsh
    chsh -s /usr/bin/zsh
if

sudo pacman -S --noconfirm python-pip

# custom_installing poetry
curl -sSL https://custom_install.python-poetry.org | python3 -
pip install  pipenv

#==============
# https://github.com/mattjmorrison/dotfiles
# Give the user a summary of what has been installed
#==============
echo -e "\n====== Summary ======\n"
cat $log_file
echo
echo "Enjoy -LrnzDC3696"
# rm $log_file
