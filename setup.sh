#!/bin/sh

apps=(
	macpass
	viscosity
	git
)

for app in "${apps[@]}"
do
	:
	echo "\n"
	echo "Setup '$app'"
	test -r "$HOME/www/config/$app/setup.sh" && bash "$HOME/www/config/$app/setup.sh"
done
