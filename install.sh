#!/bin/sh

apps=(
	brew
	git
	macpass
	# xcode
	nvm
	apptivate
	google-chrome
	npm
)

for app in "${apps[@]}"
do
	:
	echo "Installing '$app'"
	bash "$app/install.sh"
done
