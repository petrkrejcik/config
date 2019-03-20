#!/bin/sh
eval "$(ssh-agent -s)"

echo "Generating SSH keys for GitHub"
read -p "- name the file 'github' (copy entire filepath)"
read -p "- MacPass -> GitHub SSH -> cmd + ctrl + A"
ssh-keygen -o -t rsa -b 4096 -C "github.com"
sleep 3
ssh-add -K $HOME/.ssh/github
read -p "- login to github.com <press enter when done>"
pbcopy < $HOME/.ssh/github.pub
echo "Copied public key"
read -p "- github.com -> Settings -> SSH and GPG keys -> New SSH key or Add SSH key"
read -p "- name: 'Mac 1', key: cmd + V"


cd $HOME/www/config
git remote set-url origin git@github.com:petrkrejcik/config.git
git fetch # to trigger login

echo ""
echo ""

echo "Generating SSH keys for GitLab"
read -p "- name the file 'gitlab' (copy entire filepath)"
read -p "- cmd + ctrl + A"
ssh-keygen -o -t rsa -b 4096 -C "gitlab.com"
sleep 3
ssh-add -K $HOME/.ssh/gitlab
read -p "- login to gitlab.ccl <press enter when done>"
pbcopy < $HOME/.ssh/gitlab.pub
echo "Copied public key"
read -p "- open github.com -> Settings -> SSH keys -> Add key"
read -p "- name: 'Mac 1', key: cmd + V"

mkdir $HOME/www/sbks
cd $HOME/www/sbks
git clone git@git.ccl:builder/builder.git
cd builder
npm i
