#!/bin/sh

brew cask install sublime-text
ln -sf ~/www/config/sublime-text/settings.json /usr/local/Caskroom/sublime-text/3.200
sleep 2
open -a Sublime\ Text &
