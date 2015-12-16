[ -n "$PS1" ] && . ~/.bash_profile

ulimit -n 12000

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.node/bin:$PATH"
