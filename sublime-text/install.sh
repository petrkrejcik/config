#!/bin/sh

brew cask install sublime-text
ln -sf ~/www/config/sublime-text/settings.json /Users/petr.krejcik/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
open -a Sublime\ Text &
