#!/bin/sh

cd $HOME/www/config
git remote set-url origin git@github.com:petrkrejcik/config.git
git push # to trigger login

mkdir $HOME/www/sbks
cd $HOME/www/sbks
git clone git@git.ccl:builder/builder.git
cd builder
npm i
