#!/bin/bash

echo ">>>>Updating OSX stuff"
sudo softwareupdate -i -a
sudo spctl --master-disable ## Disables security stuff

echo ">>>>>Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ">>>>>Bootstrapping all the applications for the first time"
git clone https://github.com/appliedtechnology/salt-jsfs-dotfiles.git ~/.dotfiles
sh ~/.dotfiles/script/bootstrap

echo ">>>>>Setting correct version of node for the course"
. ~/.dotfiles/nvm/nvm.zsh
nvm install v12.13
nvm alias default v12.13
nvm use default
