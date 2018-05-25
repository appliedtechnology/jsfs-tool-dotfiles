#!/bin/sh
#
# zsh
#
# This installs some of the common dependencies needed (or at least desired)
# using zsh.

# Check for zsh
if test ! $(which zsh)
then
  echo "  Installing Oh My Zsh for you."

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"