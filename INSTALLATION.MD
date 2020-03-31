# Setting up your computer for the first time

The following steps helps you through installing your computer so that it is ready for you to use in the School Of Applied Technology career program.

1. Start your Mac Book Pro for the first time will take you through an installation wizard

    - Press the start button in the upper right corner. 
    - In the steps that follow setup steps; selecting the correct region.
    - You don't have to connect the computer to an ITunes account, or set up Siri.
    - At one point you will be asked for a name, an account name and password. Set your own name as name, then create an account name and password that you remember.

2. The initial setup of the computer will take you 20-40 minutes do. Once you are done you can log in to your computer for the first time. 

3. It is now time to install the tools you need to work as a developer
    The installation is going to be run as two scripts. We run scripts in a tool called the Terminal

4. * Press `⌘+Space` and type `terminal` and hit `Enter` to start a Terminal window

5. Copy (`⌘+C`) the following command and paste (`⌘+V`) into the terminal window, then hit `Enter` to execute the command.

    ```bash
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```

    * Make sure you select all of the text in the box above.

6. The above command will trigger installation of XCode developer tools.

    * Agree to the installation, by clicking on the Agree-button

7. Once the installation is done, rerun same command as above one more time.

    * Click in the terminal window

    * Press the up-arrow key once to get the same command as in step 3 loaded

    * Then hit `Enter` to execute the command.

    * Answer `Y` if a question pops up to ask you if you want to change default change. Yes you do want that.

8. Now we are going to install all the tools you will use in the course. This is done by copying (`⌘+C`) the following command and pasting (`⌘+V`) into the terminal window

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/appliedtechnology/salt-jsfs-dotfiles/master/script/saltAutomation.sh)"
    ```

    * Make sure you select all of the text in the box above.

    * This installation takes quite a lot of time (35 mins) and will ask you for you password a few times

    * This is a good time for a cup of coffee. A few feet away from the computer.

9. Finally the installation is done.

    * Now is a good time to restart your computer.
