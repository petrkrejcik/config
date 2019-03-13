######################### PATH - START #########################
# Java
export JAVA_HOME="/usr/local"

# eslint
export PATH="/Users/petr.krejcik/.nvm/versions/node/v8.5.0/bin/eslint:$PATH"

# GDAL
export PATH="/Library/Frameworks/GDAL.framework/Programs:$PATH"

# Phabricator
export PATH="$HOME/www/sbks/phabricator/arcanist/bin:$PATH"

# MacPorts Installer addition on 2018-01-27_at_18:36:51: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Node
export PATH="/Users/petr.krejcik/.nvm/versions/node/v10.12.0/bin/node:$PATH"

# /usr/local
export PATH="/usr/local/bin/:$PATH"

######################### PATH - END #########################
######################### SBKS - START #########################

export HERA_VERSION_PREFIX=krejcikp

# dev ACL
export NODE_EXTRA_CA_CERTS=/Users/petr.krejcik/Documents/SBKSAdminCA.pem

export MARATONEC_TOKEN="9qfsYxapTnhzGqNN2FTp"

######################### SBKS - END #########################




parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

COL0="\[\033[0m\]"
COL1="\[\033[0;33m\]"
COL2="\[\033[1;33m\]"
export PS1="$COL1\w $COL2\$(parse_git_branch)$COL0: "

alias ll="ls -l"
alias lla="ls -la"
alias g="git"

# Tvrdim.cz
alias sshtvrdim="ssh app@node-11.rosti.cz -p 10903"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###
