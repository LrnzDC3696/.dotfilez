source ~/.vars.sh

# create the required files
if $BASE
then
    mkdir -p $BASE/Codes
    mkdir -p $BASE/Codes/scripts
fi

# setup git
gh auth login

# set zsh to be default shell
if ! [ -r /usr/bin/zsh ]
then
    sudo pacman -S --noconfirm zsh
    chsh -s /usr/bin/zsh
if

# install python
# check if the package manager is good though
sudo pacman -S --noconfirm python-pip

# installing poetry
curl -sSL https://install.python-poetry.org | python3 -
pip install pipenv
