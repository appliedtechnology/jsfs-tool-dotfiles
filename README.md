# jsfullstackdev-dotfiles
With these files and scripts we have configured the development machines we are using in the FullStack Javascript developer course

All your computers has been preconfigured by running the bootstrapping scripts as described below. Feel free to tweak them to your liking.

# How to's

## Making your own copy
Since you most likely will want to make personalized changes it might be a great idea to make a fork of this repository.

Find the ['Fork'-button](https://github.com/saltsthlm/jsfullstackdev-dotfiles/fork) now and just fork it already.

When you are done continue below

## Applying to a computer for the first time

1. Open the Terminal
1. Install xcode command line tools by typing this at the command prompt: `xcode-select --install`
1. Install [Oh My Zsh](http://ohmyz.sh/) => `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
1. Go to the root folder => `cd ~`
1. Clone this repo into the `.dotfiles`-directory => `git clone https://github.com/{yourusername}/jsfullstackdev-dotfiles.git .dotfiles`
1. You will have to log in using your Salt-GitHub account to do that

You now have a copy of the dotfiles on your own computer.

1. Go into the directory => `cd .dotfiles`
1. Run the bootstrapping script => `bash scripts/bootstrap`
1. Stay around for a few minutes, because there will be some questions early in the process
1. After the whole thing starts to crunch away - go get a coffee and read a book. There's a lot to download.

## Keeping your computer updated

Things change. Often and fast. Every so often you would like to run the `dot` command that ensures that everything is up to date.

I do this bi-weekly.

Sometimes I feel the need to clean up the cache that Homebrew is using and then there's a handy script (`cleanupHomeBrew.sh`) that does just that. Run it bi-monthly with `bash script/cleanupHomeBrew.sh`.

# This repo

Stole this part from an [excellent description here](https://github.com/michaelmior/dotfiles)

## Topical
Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a java directory and put files in there. Anything with an extension of .zsh will get automatically included into your shell. Anything with an extension of .symlink will get symlinked without extension into $HOME when you run script/bootstrap.

## What's inside
A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser above and see what components may mesh up with you. Fork it, remove what you don't use, and build on what you do use.

## Components
There's a few special files in the hierarchy.

* `bin/`: Anything in bin/ will get added to your `$PATH` and be made available everywhere.
* `topic/*.zsh`: Any files ending in `.zsh` get loaded into your environment.
* `topic/path.zsh`: Any file named path.zsh is loaded first and is expected to setup $PATH or similar.
* `topic/completion.zsh`: Any file named completion.zsh is loaded last and is expected to setup autocomplete.
* `topic/*.symlink`: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.

# How does this work

