#!/bin/sh

apps=(
	dotfiles
	brew
	git
	macpass
	# xcode
	nvm
	apptivate
	google-chrome
	npm
	sublime
)

for app in "${apps[@]}"
do
	:
	echo "Installing '$app'"
	bash "$app/install.sh"
done
