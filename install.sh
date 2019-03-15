#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap cask-versions

brew install git
git clone git@github.com:petrkrejcik/config.git
cd config

apps=(
	# git
	# brew
	macpass
	# xcode
	apptivate
	google-chrome
	google-chrome-canary
	google-backup-and-sync
	commander-one
	sublime
	nvm
	npm
	dotfiles
)

for app in "${apps[@]}"
do
	:
	echo "Installing '$app'"
	bash "$app/install.sh"
done
