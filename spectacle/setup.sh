#!/bin/sh
mkdir -p $HOME/Library/Application\ Support/Spectacle/

ln -sf $HOME/www/config/spectacle/Shortcuts.json $HOME/Library/Application\ Support/Spectacle/Shortcuts.json

open -a Spectacle &
