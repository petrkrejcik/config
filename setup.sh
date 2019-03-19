#!/bin/sh

apps=(
	system
	macpass
	dotfiles
	viscosity
	nvm
	git
)

for app in "${apps[@]}"
do
	:
	test -r "$HOME/.bash_profile" && source "$HOME/.bash_profile"
	echo "\n"
	echo "Setup '$app'"
	test -r "$HOME/www/config/$app/setup.sh" && bash "$HOME/www/config/$app/setup.sh"
done
