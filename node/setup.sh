#!/bin/sh

npm config set @sbks:registry http://npm.ccl

read -p "- now use 'SBKS - LDAP' credentials"
npm login --registry="http://npm.ccl" --scope=@sbks
npm install @sbks/hera -g
npm install @sbks/maratonec-cli -g

read -p "- save 'SBKSAdminCA.pem' from KeyPass to $HOME/Documents/"
echo "opening https://git.ccl/profile/personal_access_tokens"
open -a Google\ Chrome\ Canary https://git.ccl/profile/personal_access_tokens
read -p "- type Name: 'Mac1'; check 'api' and Save"
read -p "- open $HOME/.credentials and hit paste to insert 'export MARATONEC_TOKEN=\"\"'"
echo "export MARATONEC_TOKEN=\"\"" | pbcopy
