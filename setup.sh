#!/bin/bash
echo "Setting up..."

if [ ! -d /usr/local/Cellar ]; then
  echo "installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew tap Homebrew/bundle
brew bundle
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
