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

