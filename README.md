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
*Be aware the automatic installation could (AND PROBABLY WILL) damage your current configuration*
UPDATE: it actually backs it up, but better be on the safe side.


Installation
------------

To install just copy this to your terminal:

    curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | /bin/bash

To Do list
----------
 * OSX: Add better support for bootstraping
 * Linux: Check for best choice for sshaskpass
 * Install and configure aditional tools like ansible, vagrant, docker, kitchen, etc
 * Add testing with shellcheck
 * Add CI
