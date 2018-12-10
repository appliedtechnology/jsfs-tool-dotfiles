ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

git clone https://github.com/saltsthlm/salt-jsfs-dotfiles.git ~/.dotfiles

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"

bash ~/.dotfiles/script/bootstrap


