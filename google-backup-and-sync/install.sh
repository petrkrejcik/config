#!/bin/sh

brew install --cask google-backup-and-sync
sleep 2
open -a Backup\ and\ Sync & # open in install.sh not to wait too much time during setup
