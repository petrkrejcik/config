#!/bin/sh

# bash_profile
ln -sf ~/www/config/dotfiles/.bash_profile ~/

# SSH
touch $HOME/.ssh
ln -sf ~/www/config/dotfiles/ssh-config ~/.ssh/config

# Credentials
touch ~/.credentials
