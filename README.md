dklight's dotrc files and stuff
===============================

 * Git configuration
 * Vim configuration
  * It Vundle (https://github.com/VundleVim/Vundle.Vim) to deploy:
   * airline - https://github.com/bling/vim-airline
   * colors-solarized - https://github.com/altercation/vim-colors-solarized
   * fugitive - https://github.com/tpope/vim-fugitive.git
 * ZSH configuration with antigen (https://github.com/zsh-users/antigen)
  * It requires poweerline-fonts (https://github.com/Lokaltog/powerline-fonts.git)
 * GNU Screen

WARNING
-------
*Be aware the automatic installation could (AND PROBABLY DO) damage your current configuration*

Installation
------------

To install just copy this to your terminal:

    curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | sh

TODO
----
 * Add autoenv as submodule
 * DONE: Add dircolors
 * Check for previous existence of the files
 * Start using https://github.com/dongweiming/dotfiles bootstrap.sh
 * Install autoenv
 * Start using git submodules
 * Check for Debian/RedHat
 * Check for root for sudo calling
 * Check if xset is present
