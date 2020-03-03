#!/usr/bin/env bash
bash ~/.oh-my-zsh/tools/uninstall.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
bash ~/.dotfiles/script/bootstrap
