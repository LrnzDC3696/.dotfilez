echo "=============== Setting up directories  ==============="
source ~/.vars.sh

if [ -r $BASE ]
then
    if ! [ -r $BASE/Codes ]
    then
        mkdir $BASE/Codes
    fi

    if ! [ -r $BASE/Codes/scripts ]
    then
        mkdir $BASE/Codes/scripts
    fi
fi

echo "========================================"

echo "=============== Setting up git ==============="
# check if git and gh is installed
gh auth login
echo "========================================"
