echo ">>>>>Installing homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo ">>>>>Bootstrapping all the applications for the first time"
git clone https://github.com/appliedtechnology/salt-jsfs-dotfiles.git ~/.dotfiles
bash ~/.dotfiles/script/bootstrap


echo ">>>>>Setting correct version of node for the course"
. ~/.dotfiles/nvm/nvm.zsh
nvm install v10.15
nvm alias default v10.15
nvm use default
