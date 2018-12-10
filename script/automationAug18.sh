ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

git clone https://github.com/saltsthlm/jsfullstackdev-dotfiles.git ~/.dotfiles

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

bash ~/.dotfiles/script/bootstrap