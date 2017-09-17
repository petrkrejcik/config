
export NVM_DIR="/Users/pedro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export HERA_VERSION_PREFIX=krejcikp
ulimit -n 8192

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}



# jak vypada konzole, na konci ma git vetev
#export PS1="\e[0;32m\[\u@\W\e[m \e[1;32m\$(parse_git_branch)\e[m: "

COL0="\[\033[0m\]"
COL1="\[\033[0;33m\]"
COL2="\[\033[1;33m\]"
export PS1="$COL1\w $COL2\$(parse_git_branch)$COL0: "
#export PS1="$COL1\u@\h:\w $COL2\$(parse_git_branch)$COL0: "

alias ll="ls -l"
alias lla="ls -la"
alias g="git"
alias cdaf="cd ~/www/analytics-frontend"
alias cdbf="cd ~/www/builder-frontend"
alias builder="cd ~/www/builder-frontend && gulp watch -c"
alias chrome="open /Applications/Google\ Chrome.app/ -n --args --disable-web-security"
#alias chrome="/Applications/Google\\ Chrome\\ Chrome.app/Contents/MacOS/Google\\ Chrome\\ Canary --user-data-dir=/Users/$USER/Library/Application\\ Support/Google/Work --disable-web-security>/dev/null 2>&1 &"
alias mongostart="mongod --dbpath /mongodb/db/"
alias mongoconsole="cd /mongodb/bin && mongo"
alias sandbox="cd ~/www/sandbox && gulp watch -c"

findtextFn() {
    grep -rnw $1 -e '$2'
}


### Testy romadur ###
alias romall="romadur test -c localChrome"
alias sele="selenium-standalone start"
rom() {
    romadur test -c localChrome $1 $2
}
romaws() {
    romadur test -c awsFirefox $1 $2
}

# Tvrdim.cz
alias sshtvrdim="ssh app@alpha-node-8.rosti.cz -p 10903"


# Git autocompletition
source ~/.git-completion.bash

# Honzovo
alias cdbt='cd ~/www/builder-test-backend/'
alias cdbtt='cd ~/www/builder-test-backend/'
alias mo='mocha --compilers coffee:coffee-script/register --reporter spec --recursive'
alias mos='mocha --compilers coffee:coffee-script/register --bail --reporter spec --recursive'
alias moll='BACKEND_SERVER=http://builder.dev.com:5262 mo'
alias mobb='BACKEND_SERVER=http://builder-api.socialbakers.com mo'
alias mott='BACKEND_SERVER=http://builder-test.socialbakers.com mo'
alias mol='cdbt ; moll'
alias mob='cdbt ; mobb'
alias mot='cdbtt ; mott'
alias mod='DEBUG=test* mo'
alias mold='cdbt ; DEBUG=test* moll'
alias mobd='cdbt ; DEBUG=test* mobb'
alias motd='cdbtt ; DEBUG=test* mott' 

export PGDATA='/Users/pedro/postgre'

# Arcanist
export PATH=$PATH:/Users/pedro/lib/arcanist/arcanist/bin

