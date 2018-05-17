#!/bin/bash
brew upgrade
brew cleanup
rm -rf $(brew --cache)