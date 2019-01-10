#!/bin/zsh

echo "Pulling latests dotfiles"
cd ~/.dotfiles
git pull

echo "Uninstallning node from homebrew"
brew uninstall --ignore-dependencies --force node
brew uninstall --ignore-dependencies --force node@10

echo "Updating ownership on config"
sudo chown -R $USER:$(id -gn $USER) ~/.config

echo "Running dot command"
dot

echo "Setting correct version of node"
. $(brew --prefix nvm)/nvm.sh
nvm install v10.15.0
nvm alias default v10.15.0
nvm use default
node -v