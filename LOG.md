# How I set it up

## Dual boot [Manjaro](https://manjaro.org/download/)

Follow this [YT tutorial](https://www.youtube.com/watch?v=bofM9tuZUs4&ab_channel=KskRoyal)

## Change the keyboard layout to colemak (CHAD)

Change the keyboard layout to become colemak \
Change the capslock key to become ctrl [YT tutorial](https://www.youtube.com/watch?v=r3hxmzwwyyE&t=564s&ab_channel=BrodieRobertson) \
(The xmodmap file is added in this repo)

## Fix the brightness adjustments

Add `acpi_backlight=vone acpi_osi=Linux` \
Here -> `GRUB_CMDLINE_LINUX="acpi_backlight=none acpi_osi=Linux"` \

```bash
sudo nvim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

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

## Setup xfce theme and other small stuff ([dracula](https://draculatheme.com/gtk))

### Theme

[Inspiration](https://www.reddit.com/r/unixporn/comments/b1sysr/i3_dracula_aka_cute_ghost/) \
Follow the link above \
Download the [wallpapers](https://github.com/dracula/wallpaper) \
Download the fonts in cmd line [`fantasque-sans-mono`](https://archlinux.org/packages/community/any/ttf-fantasque-sans-mono/) [`google-sans`](https://aur.archlinux.org/packages/ttf-google-sans)
```bash
yay -S --noconfirm ttf-fantasque-sans-mono ttf-google-sans
```

### Adjusted workspace

Changed it to 1 instead of 2

### Added widgets to the panel

- battery widget
- Language widget

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

## Other stuff that I themed (default is dracula):

### Terminal

- Tmux
- git
- fzf
- Vim
- Zsh
- zsh syntax highlighting

### Apps

- steam
- libreoffice

### Sites

- facebook messenger
- github
- monkeytype

### My phone

- nova launcher
- termux

## Stuff Installed

- i3wm

## Other stuff I did

- setup git with gh
- added discord, chrome, terminal to autostart app
