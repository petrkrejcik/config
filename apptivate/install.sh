#!/bin/sh

brew cask install apptivate
ln -s ~/www/config/apptivate/hotkeys $HOME/Library/Application\ Support/Apptivate/hotkeys
sleep 2
open -a Apptivate &
