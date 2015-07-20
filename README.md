dklight's dotfiles and stuff
===============================

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

Installation
------------

To install just copy this to your terminal:

    curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | sh

TODO
----
 * DONE: Add autoenv as submodule
 * DONE: Add dircolors
 * DONE: Check if xset is present
 * DONE: Start using git submodules instead of cloning repos
 * Check for previous existence of the files
 * Start using https://github.com/dongweiming/dotfiles bootstrap.sh
 * Check for Debian/RedHat
 * Check for root for sudo calling
 * Remove harcoded "projects" from the path
 * Check for best choice for sshaskpass
