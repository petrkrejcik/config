#!/bin/sh

# bash_profile
touch $HOME/.bash_profile
read -r -d '' VAR << EOM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
EOM
echo $VAR >> $HOME/.bash_profile

# SSH
mkdir $HOME/.ssh

# Credentials
touch $HOME/.credentials
