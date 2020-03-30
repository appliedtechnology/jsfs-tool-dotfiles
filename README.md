# jsfullstackdev-dotfiles
With these files and scripts we have configured the development machines we are using in the FullStack Javascript developer course. 

The process is almost 

All your computers has been preconfigured by running the bootstrapping scripts as described below.

## Installation description

### Installing these dotfiles computer for the first time

#### First time user

1. Start your Mac Book Pro for the first time will take you through an installation wizard. Follow the on-screen instructions. There are quite a few steps but most of the choices are really easy.

  1. Real developer uses dark mode... just sayin
  2. Make sure that you both remember the password but also make it a good password

2. The installation is going to be run as two scripts. We run scripts in a tool called the Terminal

  1. Press `⌘+Space` and type `terminal` and hit `Enter` to start a Terminal window

3. Copy (`⌘+C`) the following command and paste (`⌘+V`) into the terminal window, then hit `Enter` to execute the command.

   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

4. The above command will trigger installation of XCode developer tools. 

  1. Agree to the installation, by clicking on Agree

5. Once the installation is done, rerun same command as above one more time. 

  1. Click in the terminal window
  2. Hit the up-arrow key once to get the same command as in step 3 loaded 
  3. Then hit `Enter` to execute the command.
  4. Answer `Y` if a question pops up to ask you if you want to change default change. Yes you do want that.

6. Now we are going to install all the tools you will use in the course. This is done by copying (`⌘+C`) the following command and pasting (`⌘+V`) into the terminal window

  ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/appliedtechnology/salt-jsfs-dotfiles/master/script/saltAutomation.sh)"
  ```

  1. This installation takes quite a lot of time and will ask you for you password a few times

7. Finally the installation is done. Now is a good time to restart your computer.

#### Semi-automatic

Sadly this cannot be done with one single command, due to some agreement signing needed for XCode tools. However, it's is not that bad - just two commands:

1. First install [Oh My Zsh](http://ohmyz.sh/):

   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

   > The above command will trigger installation of xCode developer tools. Agree to the installation.
   > Once the installation is done, rerun the oh-my-zsh installation above.

1. Run this command:

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/appliedtechnology/salt-jsfs-dotfiles/master/script/saltAutomation.sh)"
   ```

1. Wait for about 35 minutes per computer

### Oh no - I've installed the wrong things and it's failing - do I need to reinstall the entire computer?

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

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a java directory and put files in there. Anything with an extension of .zsh will get automatically included into your shell. Anything with an extension of .symlink will get symlinked without extension into $HOME when you run script/bootstrap.

### What's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser above and see what components may mesh up with you. Fork it, remove what you don't use, and build on what you do use.

### Components

There's a few special files in the hierarchy.

* `bin/`: Anything in bin/ will get added to your `$PATH` and be made available everywhere.
* `topic/*.zsh`: Any files ending in `.zsh` get loaded into your environment.
* `topic/path.zsh`: Any file named path.zsh is loaded first and is expected to setup $PATH or similar.
* `topic/completion.zsh`: Any file named completion.zsh is loaded last and is expected to setup autocomplete.
* `topic/*.symlink`: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/bootstrap`.
