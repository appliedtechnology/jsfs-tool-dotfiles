# jsfullstackdev-dotfiles

With these files and scripts we have configured the development machines we are using in the FullStack Javascript developer course.

All your computers has been preconfigured by running the bootstrapping scripts as described below.

## Installation description

Sadly this installation cannot be done with one single command, due to some agreement signing needed for XCode tools. However, it's is not that bad - just two commands:

1. First install [Oh My Zsh](http://ohmyz.sh/):

   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

   > The above command will trigger installation of xCode developer tools. Agree to the installation.
   > Once the installation is done, rerun the oh-my-zsh installation above.
   

 As of 05/01/2021 it seems like apple fixed this issue, but i'll keep it here incase of.

~~09/10/2020 the installation of xCode Command Line Tools does not work as intented, another way of getting those is via this [link](https://developer.apple.com/download/more/?=command%20line%20tools) . Note that you have to sign in with your AppleID.

---

1. Run this command:

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/appliedtechnology/salt-jsfs-dotfiles/master/script/saltAutomation.sh)"
   ```

1. Wait for about 35 minutes per computer

1. You might wanna reinstall xcode commandline tools

   ```bash
   sudo rm -rf /Library/Developer/CommandLineTools
   xcode-select --install
   ```

### Oh no - I've installed the wrong things and it's failing - do I need to reinstall the entire computer

(This section might or might not be written after a horrible incident... by Marcus).

No worries - you can easily scrap the installations of both our dotfiles and the OhMyZsh, with these simple commands:

```bash
cd ~
uninstall_oh_my_zsh
rm -rf .dotfiles
```

Now you can install like described above.

If you want to remove all the applications it is possible too (`brew uninstall` on everything in the [Brewfile](./Brewfile)) but probably easier and safer to just reinstall the computer. It takes about 30 minutes.

### Keeping your computer updated

Things change. Often and fast. Every so often you would like to run the `dot` command that ensures that everything is up to date. I do this bi-weekly.

Sometimes I feel the need to clean up the cache that Homebrew is using and then there's a handy script (`cleanupHomeBrew.sh`) that does just that. Run it bi-monthly with `bash script/cleanupHomeBrew.sh`.

## About this repo

Stole this part from an [excellent description here](https://github.com/michaelmior/dotfiles)

### Topical

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a java directory and put files in there. Anything with an extension of .zsh will get automatically included into your shell. Anything with an extension of .symlink will get symlinked without extension into \$HOME when you run script/bootstrap.

### What's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser above and see what components may mesh up with you. Fork it, remove what you don't use, and build on what you do use.

### Components

There's a few special files in the hierarchy.

- `bin/`: Anything in bin/ will get added to your `$PATH` and be made available everywhere.
- `topic/*.zsh`: Any files ending in `.zsh` get loaded into your environment.
- `topic/path.zsh`: Any file named path.zsh is loaded first and is expected to setup \$PATH or similar.
- `topic/completion.zsh`: Any file named completion.zsh is loaded last and is expected to setup autocomplete.
- `topic/*.symlink`: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.
