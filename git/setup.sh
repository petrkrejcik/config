#!/bin/sh
eval "$(ssh-agent -s)"

echo "Generating SSH keys for GitHub"
read -p "- name the file 'github'"
read -p "- use password from MacPass -> GitHub SSH"
ssh-keygen -o -t rsa -b 4096 -C "github.com"
ssh-add -K $HOME/.ssh/github
echo "Copy SSH public key to github.com"
pbcopy < $HOME/.ssh/github.pub
read -p "- open github.com -> Settings -> SSH and GPG keys -> New SSH key or Add SSH key"
read -p "- name: 'Mac 1', key: cmd + V"


cd $HOME/www/config
git remote set-url origin git@github.com:petrkrejcik/config.git
git push # to trigger login

echo "Generating SSH keys for GitLab"
read -p "- name the file 'gitlab'"
read -p "- use password from MacPass -> SBKS - GitLab SSH"
ssh-keygen -o -t rsa -b 4096 -C "gitlab.com"
ssh-add -K $HOME/.ssh/gitlab
echo "Copy SSH public key to gitlab.ccl"
pbcopy < $HOME/.ssh/gitlab.pub
read -p "- open github.com -> Settings -> SSH keys -> Add key"
read -p "- name: 'Mac 1', key: cmd + V"

mkdir $HOME/www/sbks
cd $HOME/www/sbks
git clone git@git.ccl:builder/builder.git
cd builder
npm i
