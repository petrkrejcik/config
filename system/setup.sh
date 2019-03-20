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

# Show only opened apps in Dock
defaults write com.apple.dock static-only -bool TRUE; killall Dock

# Tap to click is not possible set via command line in High Sierra +
echo "Set tap to click"
read -p "Spotlight: 'trackpad', check 'Tap to click'"

# Finder
echo "Set Finder icons"
read -p "1/3 - Finder -> Preferences -> General uncheck all"
read -p "2/3 - in Sidebar check: Applications, Downloads, 'HOME', External disks, CDs, Connected servers, tags <close and press enter> "
read -p "3/3 - cmd + J, Show Library Folder"

echo "Disabling local Time Machine backups"
read -p "Spotlight: 'time pref'"
