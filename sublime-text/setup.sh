#!/bin/sh

mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Theme
mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Themes
ln -sf $HOME/www/config/sublime-text/Monokai.tmTheme $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Themes

# Settings
ln -sf $HOME/www/config/sublime-text/settings.json $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# Install all packages
ln -sf $HOME/www/config/sublime-text/packages.json $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings

ln -sf $HOME/www/config/sublime-text/SublimeLinter.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/Word\ Highlight.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

ln -sf $HOME/www/config/sublime-text/snippet-console-log-clone.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/snippet-console-log-js.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/snippet-console-log-json-js.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/snippet-console-log.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/snippet-debugger.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/snippet-profile.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -sf $HOME/www/config/sublime-text/snippet-stringify.sublime-snippet $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Key bindings
ln -sf $HOME/www/config/sublime-text/user-key-bindings.sublime-keymap $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap

open -a Sublime\ Text &
