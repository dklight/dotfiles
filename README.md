dklight's dotfiles and stuff
===============================

 * Git configuration
 * Vim configuration
  * It use Vundle (https://github.com/VundleVim/Vundle.Vim) to manage and deploy:
   * airline - https://github.com/bling/vim-airline
   * colors-solarized - https://github.com/altercation/vim-colors-solarized
   * fugitive - https://github.com/tpope/vim-fugitive.git
   * jedi - https://github.com/davidhalter/jedi-vim
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
 * Check for previous existence of the files
 * Start using https://github.com/dongweiming/dotfiles bootstrap.sh
 * PROCESS: Start using git submodules
 * Check for Debian/RedHat
 * Check for root for sudo calling
 * DONE: Check if xset is present
