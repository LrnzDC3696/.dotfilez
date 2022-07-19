# How I set it up

## Dual boot [Manjaro](https://manjaro.org/download/)

Follow this [YT tutorial](https://www.youtube.com/watch?v=bofM9tuZUs4&ab_channel=KskRoyal)

## Change the keyboard layout to colemak (CHAD)

Change the keyboard layout to become colemak \
Change the capslock key to become ctrl [YT tutorial](https://www.youtube.com/watch?v=r3hxmzwwyyE&t=564s&ab_channel=BrodieRobertson) \
(The xmodmap file is added in this repo)

## Install Chrome ([dracula](https://draculatheme.com/chrome))

```bash
# Installing chrome, more info [here](https://linuxhint.com/install-google-chrome-manjaro/)
pacman -S --needed --noconfirm base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome
```
Extensions should auto install once downloaded \ 
Chrome extensions I use ... (To be added) \
Theme should be dracula!

## Install Discord + Bettercord

`pacman -S --noconfirm discord` \
Install the downloader in [here](https://betterdiscord.app/FAQ) question 10 \
`chxmod +x path/to/above` \
Then run just run the file \
Theme should be dracula go install it [here](https://betterdiscord.app/theme/dracula) \
Choose it by bettercord's settings.

## Setup xfce's Theme ([dracula](https://draculatheme.com/gtk))

Follow the link above \
Download the [wallpapers](https://github.com/dracula/wallpaper)

## Setup Terminal Theme ([dracula](https://draculatheme.com/xfce4-terminal))

Do the above and checkout preset settings

## Install the setup

To have a better installing experience do `sudo -s`

```bash
# to update system files
pacman -Sy

# Installing github-cli, neovim tmux
pacman -S --noconfirm github-cli neovim tmux

# Installing languages
# python my main language
pacman -S --noconfirm python

# misc stuff fzf, tree, neofetch, cmatrix
pacman -S --noconfirm fzf tree neofetch cmatrix

# Installing gotop
yay -S gotop
```

### For my future lazy self

Basically most of the above but in one line
```bash
sudo pacman -Sy --noconfirm discord github-cli neovim tmux python fzf tree neofetch cmatrix && pacman -S --noconfirm --needed base-devel git && git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si && yay -S google-chrome
```
