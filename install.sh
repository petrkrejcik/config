#!/bin/sh
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew tap homebrew/cask
brew tap homebrew/cask-versions

# Git
# this can be done via downloading a ZIP of the repo and move git install into git/install.sh
brew install git
mkdir www
cd www
git clone git://github.com/petrkrejcik/config.git
cd config

apps=(
	apptivate
	# arcanist
	commander-one
	dotfiles
	nvm
	git # empty: TODO
	google-backup-and-sync
	google-chrome
	google-chrome-canary
	iterm2
	java
	macpass
	# node # requires nvm; .bash_profile
	slack
	# spectacle
	spotify
	# sublime-text
	# viscosity
	# zoomus
)

for app in "${apps[@]}"
do
	:
	test -r "$HOME/.bash_profile" && source "$HOME/.bash_profile" && echo "Sourced $HOME/.bash_profile"
	echo "Installing '$app'"
	test -r "$HOME/www/config/$app/install.sh" && bash "$HOME/www/config/$app/install.sh"
	echo ""
	echo ""
done
