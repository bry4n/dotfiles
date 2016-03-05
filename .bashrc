
# exports
export EDITOR="vim"
export PATH="$HOME/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="$HOME/.docker/machine/machines/dev"
export DOCKER_MACHINE_NAME="dev"


if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Bash aliases
if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# Sensitive information won't be in git
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

# load env/version managers
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
eval "$(pyenv init -)"
eval "$(rbenv init -)"
# eval $(docker-machine env dev)
