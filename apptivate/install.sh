#!/bin/sh

brew cask install apptivate
ln -s ~/www/config/apptivate/hotkeys /usr/local/Caskroom/apptivate/latest
sleep 2
open -a Apptivate &
