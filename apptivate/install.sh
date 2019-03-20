#!/bin/sh

brew cask install apptivate
ln -s ~/www/config/apptivate/hotkeys $HOME/Library/Application\ Support/Apptivate/hotkeys # make it in setup and restart apptivate
sleep 2
open -a Apptivate &
