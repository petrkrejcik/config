# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

alias ll="ls -l"
alias lla="ls -la"
alias g="git"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }

# COL0="\[\033[0m\]"
# COL1="\[\033[0;33m\]"
# COL2="\[\033[1;33m\]"
# export PS1="$COL1\w $COL2\$(parse_git_branch)$COL0: "


# ###-begin-npm-completion-###
# #
# # npm command completion script
# #
# # Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# # Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
# #

# if type complete &>/dev/null; then
#   _npm_completion () {
#     local words cword
#     if type _get_comp_words_by_ref &>/dev/null; then
#       _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
#     else
#       cword="$COMP_CWORD"
#       words=("${COMP_WORDS[@]}")
#     fi

#     local si="$IFS"
#     IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
#                            COMP_LINE="$COMP_LINE" \
#                            COMP_POINT="$COMP_POINT" \
#                            npm completion -- "${words[@]}" \
#                            2>/dev/null)) || return $?
#     IFS="$si"
#     if type __ltrim_colon_completions &>/dev/null; then
#       __ltrim_colon_completions "${words[cword]}"
#     fi
#   }
#   complete -o default -F _npm_completion npm
# elif type compdef &>/dev/null; then
#   _npm_completion() {
#     local si=$IFS
#     compadd -- $(COMP_CWORD=$((CURRENT-1)) \
#                  COMP_LINE=$BUFFER \
#                  COMP_POINT=0 \
#                  npm completion -- "${words[@]}" \
#                  2>/dev/null)
#     IFS=$si
#   }
#   compdef _npm_completion npm
# elif type compctl &>/dev/null; then
#   _npm_completion () {
#     local cword line point words si
#     read -Ac words
#     read -cn cword
#     let cword-=1
#     read -l line
#     read -ln point
#     si="$IFS"
#     IFS=$'\n' reply=($(COMP_CWORD="$cword" \
#                        COMP_LINE="$line" \
#                        COMP_POINT="$point" \
#                        npm completion -- "${words[@]}" \
#                        2>/dev/null)) || return $?
#     IFS="$si"
#   }
#   compctl -K _npm_completion npm
# fi
###-end-npm-completion-###

######################### ulimit - START #########################
### To solve error "[Errno 24] Too many open files"
### Default is 256
ulimit -n 1000
######################### ulimit - END #########################

######### END of bash_profile

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$NVM_DIR:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/pkrejcik/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="fwalch"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # git
    colored-man-pages
    colorize
    common-aliases # l, la, zshrc
    vscode
    # nvm
    # zsh-completions
    # nx-completion
)

source $ZSH/oh-my-zsh.sh



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Added by pedro for autocompletion
# TODO: Causes issues
autoload -U compinit && compinit

# Added by pedro for fast cd https://thoughtbot.com/blog/cding-to-frequently-used-directories-in-zsh
setopt auto_cd
cdpath=($HOME/www/soincon/ $HOME/www/soincon/emi)

alias flush-dns="killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
alias yarn-linked="find . -type l | grep -v .bin | sed 's/^\.\/node_modules\///'" 
alias yarn-unlink-all="yarn-linked | xargs yarn unlink && yarn install --check-files"

# Fuzzy search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/usr/local/opt/openjdk/bin:$PATH"


# Automatic change of node version based on .nvmrc in a directory
# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc
# END - Automatic change of node version based on .nvmrc in a directory




##### Android Studio - petrk
export ANDROID_SDK="/Users/pkrejcik/Library/Android/sdk"
export PATH="/Users/pkrejcik/Library/Android/sdk:$PATH"
##### FIN Android Studio - petrk

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

