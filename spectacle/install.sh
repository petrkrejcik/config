#!/bin/sh

brew cask install spectacle
ln -sf $HOME/www/config/spectacle/Shortcuts.json $HOME/Library/Application\ Support/Spectacle/Shortcuts.json
sleep 2
open -a Spectacle &