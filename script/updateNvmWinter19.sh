#!/bin/zsh

sudo chown -R $USER:$(id -gn $USER) ~/.config

dot

. $(brew --prefix nvm)/nvm.sh
nvm install v10.15.0
nvm alias default v10.15.0
nvm alias node default
nvm use default

node -v