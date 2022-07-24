echo "=============== Setting up zsh to be default shell ==============="

if ! [ -r /usr/bin/zsh ]
then
    sudo pacman -S --noconfirm zsh
    chsh -s /usr/bin/zsh
if
echo "========================================"

echo "=============== Setting up python ==============="
# check if python is installed
sudo pacman -S --noconfirm python-pip

# installing poetry
curl -sSL https://install.python-poetry.org | python3 -
pip install pipenv
echo "========================================"
