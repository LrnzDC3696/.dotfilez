# How I set it up

## Dual boot Manjaro

Follow this [YT tutorial](https://www.youtube.com/watch?v=bofM9tuZUs4&ab_channel=KskRoyal)

## Change the keyboard layout to colemak (CHAD)

Change the keyboard layout to become colemak \
Change the capslock key to become ctrl [YT tutorial](https://www.youtube.com/watch?v=r3hxmzwwyyE&t=564s&ab_channel=BrodieRobertson) \
(The xmodmap file is added in this repo)

## Install the stuff

To have a better installing experience do `sudo -s`

```bash
# to update system files
pacman -Sy

# Installing discord, github-cli, neovim tmux
pacman -S --noconfirm discord github-cli neovim tmux

# Installing chrome, more info [here](https://linuxhint.com/install-google-chrome-manjaro/)
pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome

# Installing languages
# python my main language
pacman -S --noconfirm python

# misc stuff fzf, tree, neofetch, cmatrix
pacman -S --noconfirm fzf tree neofetch cmatrix
```

### For my future lazy self

Basically all of the above but in one line
```bash
sudo pacman -Sy --noconfirm discord github-cli neovim tmux python fzf tree neofetch cmatrix && pacman -S --noconfirm --needed base-devel git && git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si && yay -S google-chrome
```
