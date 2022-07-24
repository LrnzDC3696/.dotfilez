
# you don't need to check stupid
echo "Installing Yay"
{
    git clone https://aur.archlinux.org/yay-git.git
    cd yay-git
    makepkg -si
} || {
    echo "Yay Failed to install"
}

# npm
echo "Installing Npm"
{
    sudo pacman -S --noconfirm npm
} || {
    echo "Npm Failed to install"
}

##### Checking if certain packages are installed

# yay
if command -v yay &> /dev/null
then
    yay_installed = 1
else
    yay_installed = 0
fi

# npm
if command -v npm &> /dev/null
then
    npm_installed = 1
else
    npm_installed = 0
fi

# python
if command -v python &> /dev/null
then
    python_installed = 1
else
    python_installed = 0
fi

# git
if command -v git &> /dev/null
then
    git_installed = 1
else
    git_installed = 0
fi
##### Done checking if certain packages are installed

# requires yay
if [[ yay_installed ]]
then
    echo "Installing Google Chrome"
    {
        sudo pacman -S --needed --noconfirm base-devel git
        yay -S google-chrome
    } || {
        echo "Installing Chrome failed"
    }

    echo "Installing Gotop"
    {
        yay -S gotop
    } || {
        echo "Installing Non Required Stuff failed"
    }
fi

if [[ npm_installed && git_installed ]]
then
    echo "installing discord and better discord"
    {
        sudo pacman -s --noconfirm discord
        git clone https://github.com/betterdiscord/betterdiscord.git
        cd betterdiscord
        npm install
        npm run build
        npm run inject
    } || {
        echo "installing discord failed"
    }
fi

echo "Installing keyboard stuff"
{
    sudo pacman -S xorg-xmodmap xorg-xev xorg-setkbmap xorg-xset
} || {
    echo "Installing keyboard stuff failed"
}
