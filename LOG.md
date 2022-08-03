# How I set it up

## Dual boot [Manjaro](https://manjaro.org/download/)

Follow this [YT tutorial](https://www.youtube.com/watch?v=bofM9tuZUs4&ab_channel=KskRoyal)

## System settings

### Small Stuff

- Connect wifi
- Setup Backup
- Update drives
- Change about me
- Customize appearance
  - Style: Matcha-dark-azul
  - Icons: Papirus
- Customize panel
  - autohide panel: always
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
**NOTE: Reboot pc to changes to take place!!!**

## Installin Application

### Installing Emoji

```bash
sudo pacman -S noto-fonts-emoji
```

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

## Setting up terminal stuff

### Installin stuff

To have a better installing experience do `sudo -s`

```bash
# to update system files
pacman -Sy

# Installing github-cli, neovim tmux
pacman -S --noconfirm github-cli neovim tmux xclip

# Installing languages
# python my main language
pacman -S --noconfirm python

# misc stuff fzf, tree, neofetch, cmatrix
pacman -S --noconfirm fzf tree neofetch cmatrix trash-cli

# Installing gotop
yay -S gotop
```

#### For my future lazy self

Basically most of the above but in one line
```bash
sudo pacman -Sy --noconfirm discord github-cli neovim tmux python fzf tree neofetch cmatrix && sudo pacman -S --noconfirm --needed base-devel git && git clone https://aur.archlinux.org/yay-git.git && cd yay-git && makepkg -si && yay -S google-chrome xclip
```

### Setting up stuff

#### Zsh

##### Setting zsh to default

```bash
# To list available shell
chsh -l

# Change to the given shell path
chsh -s path/to/shell

# Check which shell is running
which $SHELL
```
**NOTE: Reboot pc to changes to take place!!!**

#### Tmux

#### Setup [tmp](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
open tmux
`prefix` + `shift` + `I`

#### Neovim

Download the zip file of previous codes then just use that.

#### Git

Make sure `github-cli` is installed
`gh auth login`

#### Xmodmap (remapping capslock to ctrl)

References: [wiki](https://wiki.archlinux.org/title/User:Larivact/old-drafts/Keyboard_input) [youtube](https://www.youtube.com/watch?v=r3hxmzwwyyE)
Make Caps Lock Great Again By Remapping It With Xmodmap)
Install required stuff
```bash
sudo pacman -S xorg-xmodmap xorg-xev xorg-setkbmap xorg-xset
```
- `xorg-xmodmap`! : Use to remap keys
- `xorg-xev` : Use to get the name of keys and key sims
- `xorg-setkbmap` : Use to reset keyboard layout
- `xorg-xset` : Use to allow key repeat

run to see what to change
`xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'`

paste
```bash
keycode {above} = Control_L NoSymbol Control_L
add Control = Control_L
```

paste in `.xinitrc`
```bash
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
```
**NOTE: Reboot pc to changes to take place!!!**

#### Download important python packages
- `pip` : `sudo pacman -S python-pip`
- `poetry` : `curl -sSL https://install.python-poetry.org | python3 -`
- `pipenv` : `pip install pipenv`

### Terminal Checks
- Check if the paths are correct to the system
- Check if the colorscheme is correct in tmux > nvim
- Check if neovim is setup via :checkhealth
- Check if development packages are installed

## Themin

[Inspiration](https://www.reddit.com/r/unixporn/comments/b0sysr/i3_dracula_aka_cute_ghost/) \
Follow the link above \
Download the [wallpapers](https://github.com/dracula/wallpaper) \
Download the fonts in cmd line [`fantasque-sans-mono`](https://archlinux.org/packages/community/any/ttf-fantasque-sans-mono/) [`google-sans`](https://aur.archlinux.org/packages/ttf-google-sans)
```bash
yay -S --noconfirm ttf-fantasque-sans-mono ttf-google-sans
```

### Stuff that I themed:

- [x] wallpapers https://draculatheme.com/wallpaper
- [ ] grub https://draculatheme.com/grub
- [x] gtk https://draculatheme.com/gtk
  - [ ] Steam https://draculatheme.com/steam
  - [ ] Libreoffice https://draculatheme.com/libreoffice
  - [x] Thunderbird https://draculatheme.com/thunderbird
- [x] Xfce4-Terminal https://draculatheme.com/xfce4-terminal
  - [x] Tmux https://draculatheme.com/tmux
  - [x] Git https://draculatheme.com/git
  - [x] Fzf https://draculatheme.com/fzf
  - [x] Vim https://draculatheme.com/vim
  - [ ] Zsh https://draculatheme.com/zsh
  - [x] Zsh syntax highlighting https://draculatheme.com/zsh-syntax-highlighting
  - [x] Ls https://draculatheme.com/colorls
  - [ ] Ranger https://draculatheme.com/ranger
- [x] Chrome https://draculatheme.com/chrome
  - [x] Github https://draculatheme.com/github
  - [x] Stackoverflow https://draculatheme.com/stackoverflow
  - [ ] Facebook Messenger https://draculatheme.com/facebook-messenger
  - [x] Monkeytype https://draculatheme.com/monkeytype
- [ ] My phone
  - [x] nova launcher https://draculatheme.com/nova-launcher
  - [ ] termux https://draculatheme.com/termux

## Other stuff

### Stuff Installed

- i3wm
- screenkey
- kazam

### Other stuff I did

- setup git with gh
- installed musics
- synced email
- added discord, chrome, terminal to autostart app
