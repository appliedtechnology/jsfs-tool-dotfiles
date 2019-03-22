echo ">>>>>Setting correct version of node for the course"
. $(brew --prefix nvm)/nvm.sh
nvm install v10.15.0
nvm alias default v10.15.0
nvm use default
