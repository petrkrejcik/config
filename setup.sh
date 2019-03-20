#!/bin/sh

apps=(
	google-backup-and-sync # certs
	macpass # to have VPN password
	viscosity # connect VPN
	node # requires .bash_profile; requires VPN
	repos # download repos, so symlinking to confg repo is possible from now on
	dotfiles # links .bash_profile
	apptivate
	system
	commander-one
	git # gitconfig
	google-chrome
	google-chrome-canary
	iterm2
	# laverna
	slack
	spectacle
	spotify
	sublime-text
	zoomus
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
