LOG_FILE=~/install_progress_log.txt

if [[ ! -f LOG_FILE ]]
then
    touch $LOG_FILE
fi

function pacman_install(package){
    sudo pacman -S --noconfirm package
}

function pkg_install(package){
    pkg install -y package
}

function check_n_log(package){
    if type -p package > /dev/null; then
        echo "$package Installed" >> $log_file
    else; then
        echo "$package FAILED TO INSTALL!!!" >> $log_file
    fi
}

function install(package){
    pacman_install(package)
    # if system is manjaro; then
    #     pacman_install(package)
    # else system is termux; then
    #     pkg_install(package)
    # fi
    check_n_log(package)
}

# terminal stuff
install(zsh)

install(tmux)
install(neovim)
install(xclip)

install(git)
install(gh)

install(python)
install(npm)

install(github-cli)

# commonly used non usefull stuff
install(noto-fonts-emoji)
install(tree)
install(neofetch)
install(cmatrix)
install(fzf)

# keyboard related stuff
install(xorg-xmodmap)
install(xorg-xev)
install(xorg-setkbmap)
install(xorg-xset)

# installing yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
check_n_log(yay)

# installing google
sudo pacman -S --needed --noconfirm base-devel git
yay -S google-chrome
check_n_log(google-chrome)

# insalling gotop
yay -S gotop
check_n_log(gotop)

# installing discord
sudo pacman -s --noconfirm discord
git clone https://github.com/betterdiscord/betterdiscord.git
cd betterdiscord
npm install
npm run build
npm run inject
