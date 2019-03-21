#!/bin/sh

mkdir -p $HOME/www/sbks/phabricator
cd $HOME/www/sbks/phabricator

git clone https://github.com/phacility/libphutil.git
git clone https://github.com/phacility/arcanist.git

PATH="$HOME/www/sbks/phabricator/arcanist/bin:$PATH"
arc upgrade

cd $HOME/www/config
