#!/bin/sh

cd ~
rm -rf $HOME/www/2config
git clone git@github.com:petrkrejcik/config.git $HOME/www/2config

mkdir $HOME/www/sbks
cd $HOME/www/sbks
git clone git@git.ccl:builder/builder.git
# cd builder
# npm i
