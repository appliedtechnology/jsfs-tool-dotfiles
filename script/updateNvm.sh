#!/bin/zsh

sudo chown -R $USER:$(id -gn $USER) ~/.config

dot

nvm install v10.15.0
nvm alias default v10.15.0
nvm use default

node -v