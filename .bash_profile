
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#!/bin/bash
ulimit -n 9999
source ~/.terminal_magic

# Source git prompt
# source ~/.git-prompt.sh

#DOCKER CONTAINERS
cleanContainers() {
   docker ps -a | awk '{ print $1,$2 }' | grep $1 | awk '{print $1 }' | xargs -I {} docker rm {}
}
alias dckrcleancontainers=cleanContainers

removeImages() {
    docker images | awk '{print $1,$3}' | grep $1 | awk '{print $2}' | xargs -I {} docker rmi {}
}

alias dckrremoveimages=removeImages

alias size='du -hs * | sort -h'

#MAKE THE TERMINAL BETTER
alias ..='cd ..'

#LS Colors and other aliases
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1='\[\033[01;32m\]  \[$(_returnLambda)\]λ \[\033[01;34m\]\W$(__git_ps1 \ \[\e[32m\][%s]) \[\e[1;37m\]\$\[\033[00m\] '
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
alias ls='ls -G'
# alias ll='ls -l'

#FONT SPECIMEN
alias huiiconfont='open ~/Dev/hui-icon-font/lib/homes-icons/specimen/index.html'

export DYLD_LIBRARY_PATH=/Users/mdolt/Dev/Oracle
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="/Users/mdolt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_ENV=development

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ".terminal_magic" ]; then
    . ".terminal_magic"  # go get terminal magic
fi

# if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
#     source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
# fi

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

#autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

#GoLang
export PATH=$PATH:/Users/mdolt/Documents/Go/bin
export GOPATH=/Users/mdolt/Documents/Go
