#!/bin/sh

mkdir -p $HOME/Library/Application\ Support/Apptivate/

ln -sf $HOME/www/config/apptivate/hotkeys $HOME/Library/Application\ Support/Apptivate/hotkeys

open -a Apptivate &
