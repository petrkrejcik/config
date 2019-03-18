#!/bin/sh

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap homebrew/cask-versions

# Git
brew install git
mkdir www
cd www
git clone git://github.com/petrkrejcik/config.git
cd config

apps=(
	commander-one
	dotfiles
	git # symlinks
	google-backup-and-sync
	google-chrome
	google-chrome-canary
	iterm2
	laverna
	macpass
	nvm # requires .bash_profile
	slack
	spectacle
	spotify
	sublime-text
	viscosity
	zoomus
	apptivate # maybe at the end?
	system
	# npm
)

for app in "${apps[@]}"
do
	:
	echo "\n"
	echo "Installing '$app'"
	test -r "$app/install.sh" && bash "$app/install.sh"
done
