#!/bin/sh

brew cask install spectacle
ln -sf $HOME/www/config/spectacle/Shortcuts.json /usr/local/Caskroom/spectacle/1.2
sleep 2
open -a Spectacle &