#!/bin/sh

brew cask install sublime-text
ln -sf ~/www/config/sublime-text/settings.json $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
sleep 2
# Package Control
curl https://packagecontrol.io/Package%20Control.sublime-package > $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages

# Install all packages
ln -sf $HOME/www/config/sublime-text/packages.json $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package Control.sublime-settings

open -a Sublime\ Text &

# link packages user settings in setup.sh (because they need to install automatically after initial open)
