#!/bin/sh

read -p "- save 'SBKSAdminCA.pem' from KeyPass to $HOME/Documents/"

ln -sf $HOME/www/config/dotfiles/ssh-config $HOME/.ssh/config
ln -sf $HOME/www/config/dotfiles/.bash_profile $HOME/
