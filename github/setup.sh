#!/bin/sh
eval "$(ssh-agent -s)"

echo "Generating SSH keys for GitHub"
read -p "- when prompted paste password from MacPass -> GitHub SSH -> cmd + T <press enter>"
ssh-keygen -o -t rsa -b 4096 -C "github.com" -f $HOME/.ssh/github
sleep 3
ssh-add -K $HOME/.ssh/github
read -p "- login to github.com <press enter when done>"
read -p "- github.com -> Settings -> SSH and GPG keys -> New SSH key or Add SSH key <press enter when ready for paste>"
pbcopy < $HOME/.ssh/github.pub
echo "Copied public key (pbcopy < $HOME/.ssh/github.pub)"
read -p "- name: 'Mac 1', key: cmd + V"

cd $HOME/www/config
git remote set-url origin git@github.com:petrkrejcik/config.git
git fetch # to trigger login
