#!/bin/sh

read -p "Change password, you will type it a lot"

apps=(
	google-backup-and-sync
	macpass
	#java
	#node # requires .bash_profile; requires VPN
	github
	dotfiles
	apptivate
	commander-one
	git
	google-chrome
	google-chrome-canary
	iterm2
	slack
	spotify
	joplin
	system
	lightshot
	soincon
)

for app in "${apps[@]}"
do
	:
	# test -r "$HOME/.bash_profile" && source "$HOME/.bash_profile"
	echo "Setup '$app'"
	test -r "$HOME/www/config/$app/setup.sh" && bash "$HOME/www/config/$app/setup.sh"
	echo ""
	echo ""
done
