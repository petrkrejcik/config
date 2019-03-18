#!/bin/sh

apps=(
	macpass
	viscosity
	# git
)

for app in "${apps[@]}"
do
	:
	echo "\n"
	echo "Setup '$app'"
	test -r "$app/setup.sh" && bash "$app/setup.sh"
done
