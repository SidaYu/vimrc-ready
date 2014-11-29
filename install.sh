#!/bin/bash

VIMRC="${HOME}/.vimrc"
VIMRC_LOCAL="${HOME}/.vimrc.local"

# backup user's previous settings
echo -e "Backup your old vimrc setting files..."
if [ -f $VIMRC ]; then
	mv $VIMRC "${VIMRC}.ori"
fi
if [ -f $VIMRC_LOCAL ]; then
	mv $VIMRC_LOCAL "${VIMRC_LOCAL}.ori"
fi

# update vimrc settings
echo -e "\nupdate vimrc settings..."
cp "vimrc" $VIMRC
cp "vimrc.local" $VIMRC_LOCAL

# install the bundles
echo -e "\ninstall vim bundles..."
vim +NeoBundleInstall +qall

echo -e "\n\e[32mall done! enjoy it!\e[39m"
