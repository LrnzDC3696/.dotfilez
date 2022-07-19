# How I set it up

## Dual boot [Manjaro](https://manjaro.org/download/)

Follow this [YT tutorial](https://www.youtube.com/watch?v=bofM9tuZUs4&ab_channel=KskRoyal)

## System settings

### Small Stuff

- Connect wifi
- Change about me
- Customize appearance
  - Style: Matcha-dark-azul
  - Icons: Papirus
- Customize panel
  - removed workspace widget
  - added powermanagement widget
  - added keyboard layout widget
- Customize Power Manager
  - Buttons
  - **HANDLE DISPLAY BUTTON KEYS**!!!
- Customzie app/remove applications
  - software center > 3 dots at top right > preferences
    - enable AUR
    - mirror official repository to current country

### Change the keyboard layout to colemak (CHAD)

Change the keyboard layout to become colemak \
Change the capslock key to become ctrl [YT tutorial](https://www.youtube.com/watch?v=r3hxmzwwyyE&t=564s&ab_channel=BrodieRobertson) \
(The xmodmap file is added in this repo)

### Fix the brightness adjustments

Add `acpi_backlight=vone acpi_osi=Linux` \
Here -> `GRUB_CMDLINE_LINUX="acpi_backlight=none acpi_osi=Linux"`
```bash
sudo nvim /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
Then reboot

## Installin Application

### Install Chrome ([dracula](https://draculatheme.com/chrome))

NOTE: You can install this in `app/remove roftware` if AUR repository is enabled

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

### Install Discord + Bettercord

NOTE: You can install this in via `app/remove roftware`

`pacman -S --noconfirm discord` \
Install the downloader in [here](https://betterdiscord.app/FAQ) question 10 \
`chxmod +x path/to/above` \
Then run just run the file \
Theme should be dracula go install it [here](https://betterdiscord.app/theme/dracula) \
Choose it by bettercord's settings.

## Installin Cmdline stuff

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

## Themin

[Inspiration](https://www.reddit.com/r/unixporn/comments/b1sysr/i3_dracula_aka_cute_ghost/) \
Follow the link above \
Download the [wallpapers](https://github.com/dracula/wallpaper) \
Download the fonts in cmd line [`fantasque-sans-mono`](https://archlinux.org/packages/community/any/ttf-fantasque-sans-mono/) [`google-sans`](https://aur.archlinux.org/packages/ttf-google-sans)
```bash
yay -S --noconfirm ttf-fantasque-sans-mono ttf-google-sans
```

### Stuff that I themed:

- gtk https://draculatheme.com/gtk
  - Steam https://draculatheme.com/steam
  - Libreoffice https://draculatheme.com/libreoffice
- Xfce4-Terminal https://draculatheme.com/xfce4-terminal
  - Tmux https://draculatheme.com/tmux
  - Git https://draculatheme.com/git
  - Fzf https://draculatheme.com/fzf
  - Vim https://draculatheme.com/vim
  - Zsh https://draculatheme.com/zsh
  - Zsh syntax highlighting https://draculatheme.com/zsh-syntax-highlighting
- Chrome https://draculatheme.com/chrome
  - Github https://draculatheme.com/github
  - Stackoverflow https://draculatheme.com/stackoverflow
  - Facebook Messenger https://draculatheme.com/facebook-messenger
  - Monkeytype https://draculatheme.com/monkeytype
- My phone
  - nova launcher https://draculatheme.com/nova-launcher
  - termux https://draculatheme.com/termux

## Stuff Installed

- i3wm

## Other stuff I did

- setup git with gh
- added discord, chrome, terminal to autostart app
