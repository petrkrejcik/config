#!/bin/sh

echo "Generating SSH keys for GitLab"
read -p "- when prompted paste password from MacPass -> Soincon - GitLab SSH -> cmd + T <press enter>"
ssh-keygen -o -t rsa -b 4096 -C "gitlab.com" -f $HOME/.ssh/gitlab
sleep 3
ssh-add -K $HOME/.ssh/gitlab
read -p "- login to gitlab.soincon.es <press enter when done>"
read -p "- open gitlab.soincon.es -> Settings -> SSH keys -> Add key <press enter when ready for paste>"
pbcopy < $HOME/.ssh/gitlab.pub
echo "Copied public key (pbcopy < $HOME/.ssh/gitlab.pub)"
read -p "- name: 'Mac 1', key: cmd + V"
