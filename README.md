# jsfullstackdev-dotfiles
With these files and scripts we have configured the development machines we are using in the FullStack Javascript developer course

All your computers has been preconfigured by running the bootstrapping scripts as described below. Feel free to tweak them to your liking.

# How to's

## Making your own copy
Since you most likely will want to make personalized changes it might be a great idea to make a fork of this repository.

Find the ['Fork'-button](https://github.com/saltsthlm/jsfullstackdev-dotfiles#fork-destination-box) now and just fork it already.

When you are done continue below

## Applying to a computer for the first time

1. Go to the root folder => `cd ~`
2. Clone this repo into the `.dotfiles`-directory => `git clone https://github.com/{yourusername}/jsfullstackdev-dotfiles.git .dotfiles`
3. Go into the directory => `cd .dotfiles`

You now have a copy of the dotfiles on your own computer.

4. Run the bootstrapping script => `bash scripts/bootstrap`
5. Stay around for a few minutes, because there will be some questions early in the process
6. After the whole thing starts to crunch away - go get a coffee and read a book. There's a lot to download.

## Keeping your computer updated

Things change. Often and fast. Every so often you would like to re-run the boostrap script (`bash scripts/bootstrap`) to keep your computer up to date.

I do this bi-weekly.

Sometimes I feel the need to clean up the cache that Homebrew is using and then there's a handy script (`cleanupHomeBrew.sh`) that does just that. Run it bi-monthly with `bash script/cleanupHomeBrew.sh`.

## Adding new tools

# How does this work

