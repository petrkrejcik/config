#!/bin/sh

# Screensaver slideshow duration to 30 seconds
/usr/libexec/PlistBuddy -c "set ':JustASlide:mainDuration' 30" /System/Library/PrivateFrameworks/Slideshows.framework/Versions/A/Resources/Content/EffectDescriptions.plist

# Disable 3 finger swipe in Canary
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool FALSE

# Shortcuts
ln -sf ~/www/config/settings/.GlobalPreferences.plist ~/Library/Preferences/
ln -sf ~/www/config/settings/com.apple.finder.plist ~/Library/Preferences/
ln -sf ~/www/config/settings/com.google.Chrome.canary.plist ~/Library/Preferences/
ln -sf ~/www/config/settings/com.google.Chrome.plist ~/Library/Preferences/

cp $HOME/www/config/system/Czech_Programmers_0.2.keylayout /Library/Keyboard\ Layouts

# Show only opened apps in Dock
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# Tap to click is not possible set via command line in High Sierra +
echo "Trackpad etc"
read -p "Spotlight: 'trackpad', check 'Tap to click'"
read -p "More Gestures -> uncheck 'Mission Control, Launchpad, Show Desktop'"
read -p "Preferences -> Accessibility -> Mouse & Trackpad -> Trackpad Options -> Enable dragging: 'three finger drag'"
read -p "Preferences -> Accessibility -> Display -> check 'Reduce motion'"

# Keyboard
read -p "Preferences -> Keyboard -> Keyboard -> check 'Show keyboard and emoji...'"
read -p "Preferences -> Keyboard -> Text -> uncheck all"
read -p "Preferences -> Keyboard -> Shortcuts -> uncheck 'Show Desktop, Show Dashboard', ..."
read -p "Preferences -> Keyboard -> Input Sources -> + -> Czech Programmers, Czech - QWERTY"

# Siri
read -p "Preferences -> Siri -> disable'"

# Date & Time
read -p "Preferences -> Date & Time -> Clock -> check 'Show the day of the week'"

# Finder
echo "Set Finder icons"
read -p "1/3 - Finder -> Preferences -> General uncheck all"
read -p "2/3 - in Sidebar check: Applications, Downloads, 'HOME', External disks, CDs, Connected servers, tags <close and press enter> "
read -p "3/3 - cmd + J, Show Library Folder"

echo "Disabling local Time Machine backups"
read -p "Spotlight: 'time pref'"
