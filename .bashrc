[ -n "$PS1" ] && . ~/.bash_profile

ulimit -n 12000

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.node/bin:$PATH"

export NVM_DIR="/Users/tekm/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:/usr/local/Cellar/node/7.8.0/bin"
