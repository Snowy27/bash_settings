
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#!/bin/bash
ulimit -n 9999
source ~/.terminal_magic

# Source git prompt
# source ~/.git-prompt.sh

alias ls='echo HOME.COM IS ON THE MOVE'

#CLEAR HUI-* MODULES IN CACHE
alias huinpmrclear='rm -rf ~/.npm_lazy/hui-*'

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

#Unity3D
alias unity='/Applications/Unity/Unity.app/Contents/MacOS/Unity'

#LINK/UNLINK HUI-* MODULES
alias huiula='npmr uninstall hui-grunt-build hui-components-content hui-components-ui hui-components-vendor hui-components-mock hui-components-style && npmr install'
alias huila='npmr link hui-grunt-build hui-components-content hui-components-ui hui-components-style'

#TEST HUI-COMPONENT* MODULES
alias huicheck='make jshint test-code-style && grunt test_unit'
alias huicheckbuild='make jshint test-code-style test-cov'
alias huistyle='make jshint test-code-style'
alias node-test='node ./node_modules/lab/bin/lab -e development -v -m 1000'

#RUN IN SSR
alias ssr='NODE_ENV=development APP_HOST="http://localhost:3000" SERVER_SIDE_RENDERING=true npm run-script serve'

#SHARE ENV
alias huibroadcast='~/huibroadcast.sh'

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

#PACKAGES
alias startmobile='DEVELOPER=mdolt MEMCACHED_CONNECTION_STRING= node .'
alias startmobilelive='DEVELOPER=mdolt MEMCACHED_CONNECTION_STRING= API_PUBLIC_HOST=heliosapi.homes.com node .'
alias mobile='cd ~/Dev/hui-mobile'
alias content='cd ~/Dev/hui-components-content'
alias style='cd ~/Dev/hui-components-style'
alias ui='cd ~/Dev/hui-components-ui'
alias vendor='cd ~/Dev/hui-components-vendor'
alias dfp='cd ~/Dev/hui-components-dfp'
alias desktop='cd ~/Dev/hui-desktop'
alias huigrunt='cd ~/Dev/hui-grunt-build'
alias webmobile='cd ~/Dev/web-composer-hui-mobile'
alias webdesktop='cd ~/Dev/web-composer-hui-desktop'
alias mock='cd ~/Dev/hui-components-mock'
#alias test='cd ~/Dev/Test\ Folder'

export DYLD_LIBRARY_PATH=/Users/mdolt/Dev/Oracle
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NVM_DIR="/Users/mdolt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export ORACLE_PASS=e2BR5CXL
export OCI_HOME=/Users/mdolt/Dev/Oracle
export OCI_LIB_DIR=$OCI_HOME
export OCI_INCLUDE_DIR=$OCI_HOME/sdk/include
export OCI_INC_DIR=$OCI_HOME/sdk/include
export OCI_VERSION=11
export ORACLE_SID=ols
# export OCI_VERSION=<the instant client major version number> # Optional. Default is 11.
export NLS_LANG=AMERICAN_AMERICA.UTF8
export GOVERNOR_HOST=localhost:1337
export RABBITMQ_URL=amqp://localhost
export ELASTICSEARCH_LAD_HOST=eslad.dev.homes.com
export ELASTICSEARCH_LAD_PORT=80
#export ELASTICSEARCH_LAD_HOST=localhost
#export ELASTICSEARCH_LAD_PORT=9200
export DEVELOPER=mike
export ORACLE_USER_NAME=nodejsu
export MEMCACHED_CONNECTION_STRING=localhost:11211
#export NODE_LISTING_SOLR_HOST=solr.stg.homes.com
export NODE_MONGO_HOMESCOM_REPORTING=mongodb://mongoaggr.dc3.homes.com/homescom_reporting
export SOLR_LISTING_HOST=solr.dev.homes.com
export SOLR_LISTING_PATH=/solr/slprod
export SOLR_LISTING_PORT=80
# export MONGO_HOMESCOM_CORE=mongodb://127.0.0.1/homescom_core
export SOLR_HV_HOST=slcloud.dc3.homes.com
export MSSQL_PASS='Ap!$123'
export MSSQL_USER_NAME=Api_user
export MSSQL_DB_NAME=ols
export MSSQL_HOST_NAME=10.93.96.88
export MSSQL_PORT=1433
export ORACLE_IN_USE=   
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
