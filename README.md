dklight's dotfiles and stuff
============================

 * Git configuration
 * Vim configuration
  * vundle: manage and deploy plugins - https://github.com/VundleVim/Vundle.Vim
  * airline - https://github.com/bling/vim-airline
  * colors-solarized: solarized theme for vim - https://github.com/altercation/vim-colors-solarized
  * fugitive: git related stuff - https://github.com/tpope/vim-fugitive.git
  * jedi: python autocompletion - https://github.com/davidhalter/jedi-vim
 * ZSH configuration with antigen (https://github.com/zsh-users/antigen)
  * It requires poweerline-fonts (https://github.com/Lokaltog/powerline-fonts.git)
 * Autoenv - https://github.com/kennethreitz/autoenv
 * GNU Screen

WARNING
-------
*Be aware the automatic installation could (AND PROBABLY DO) damage your current configuration*

Testing
-------

Full configuration can be tested using a [docker](https://www.docker.com/) image.
If you have docker installed just copy this to your console:

    docker build -t dotfiles https://raw.githubusercontent.com/dklight/dotfiles/master/Dockerfile

If you dont know what docker is, you need to use it.

    sudo apt-get install docker.io


Installation
------------

To install just copy this to your terminal:

    curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | sh

To Do list
----------
 * DONE: Add autoenv as submodule
 * DONE: Add dircolors
 * DONE: Check if xset is present
 * DONE: Start using git submodules instead of cloning repos
 * DONE: Remove harcoded "projects" from the path
 * DONE: Check for previous existence of the files
 * DONE: Start using https://github.com/dongweiming/dotfiles bootstrap.sh
 * Check for Debian/RedHat
 * Check for root for sudo calling
 * Check for best choice for sshaskpass
