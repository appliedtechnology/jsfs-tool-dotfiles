ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

git clone https://github.com/saltsthlm/jsfullstackdev-dotfiles.git ~/.dotfiles

bash ~/.dotfiles/script/bootstrap

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"