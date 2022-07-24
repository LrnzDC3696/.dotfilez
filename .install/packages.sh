echo "=============== installing ==============="

echo "Pacman Update"
{
    sudo pacman -Sy
} || {
    echo "Updating Pacman Failed"
}

echo "Emoji"
{
    sudo pacman -S --noconfirm noto-fonts-emoji
} || {
    echo "Installing Emoji failed"
}

echo "Installing Usefull Stuff"
{
    sudo pacman -S --noconfirm github-cli neovim tmux xclip git gh python fzf npm zsh
} || {
    echo "Installing Required Stuff failed"
}

echo "Installing Common Stuff"
{
    sudo pacman -S --noconfirm  tree neofetch cmatrix
} || {
    echo "Installing Non Required Stuff failed"
}

echo "========================================"
