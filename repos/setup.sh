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

ln -sf $HOME/www/config/dotfiles/ssh-config $HOME/.ssh/config # TODO? Dont know if it solves permission denied

cd $HOME/www/config
git remote set-url origin git@github.com:petrkrejcik/config.git
git fetch # to trigger login

echo ""
echo ""

echo "Generating SSH keys for GitLab"
read -p "- when prompted paste password from MacPass -> SBKS - GitLab SSH -> cmd + T <press enter>"
ssh-keygen -o -t rsa -b 4096 -C "gitlab.com" -f $HOME/.ssh/gitlab
sleep 3
ssh-add -K $HOME/.ssh/gitlab
read -p "- login to gitlab.ccl <press enter when done>"
read -p "- open github.com -> Settings -> SSH keys -> Add key <press enter when ready for paste>"
pbcopy < $HOME/.ssh/gitlab.pub
echo "Copied public key (pbcopy < $HOME/.ssh/gitlab.pub)"
read -p "- name: 'Mac 1', key: cmd + V"

mkdir $HOME/www/sbks
cd $HOME/www/sbks
git clone git@git.ccl:builder/builder.git
cd builder
npm i
smrt env save dev
cp $HOME/www/config/sublime-text/project.sublime-project $HOME/www/sbks/builder.sublime-project

# TODO: mobile
