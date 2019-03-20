#!/bin/sh

apps=(
	repos # download repos, so symlinking to confg repo is possible from now on
	system
	macpass
	sublime-text
	dotfiles
	git
	viscosity
	node
	lightshot
)

for app in "${apps[@]}"
do
	:
	test -r "$HOME/.bash_profile" && source "$HOME/.bash_profile"
	echo "Setup '$app'"
	test -r "$HOME/www/config/$app/setup.sh" && bash "$HOME/www/config/$app/setup.sh"
	echo ""
	echo ""
done
