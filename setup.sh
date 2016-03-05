#!/bin/bash
echo "Setting up..."

if [ ! -d /usr/local/Cellar ]; then
  echo "installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install go nvm pyenv rbenv redis postgres bash-completion vim weechat wget curl git ack the_silver_searcher elinks
brew cask install google-chrome caffine flux alfred iterm2 virtualbox vagrant
brew doctor

cp .bash* ~/
cp .gitconfig ~/
cp .ackrc ~/
cp .gemrc ~/
cp .muttrc ~/
cp .mailcap ~/

git clone git://github.com/bry4n/venus.git ~/venus
cd ~/venus && ./setup.sh

echo "Done. Restart your terminal"
