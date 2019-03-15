#!/bin/sh

apps=(
	brew
	git
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
