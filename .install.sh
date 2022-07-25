source ~/.vars.sh
# I need the $INSTALL_DIR

if [! $INSTALL_DIR]; then
    echo "Please set the INSTALL_DIR"
fi

source $INSTALL_DIR/packages.sh
source $INSTALL_DIR/dev_files.sh

echo "===== Rebooting ====="
# reboot
