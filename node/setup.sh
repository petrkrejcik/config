#!/bin/sh

npm config set @sbks:registry http://npm.ccl

read -p "- now use 'SBKS - LDAP' credentials"
npm login --registry="http://npm.ccl" --scope=@sbks
npm install @sbks/hera -g
npm install @sbks/maratonec-cli -g

read -p "- save 'SBKSAdminCA.pem' from KeyPass to $HOME/Documents/"
read -p "- open https://git.ccl/profile/personal_access_tokens"
read -p "- check 'api' and Save"
read -p "- open $HOME/.credentials"
read -p "- paste: export MARATONEC_TOKEN=\"\""
