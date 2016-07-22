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
UPDATE: it actually backs it up, but better be on the safe side.

Testing
-------

Right now I'm in the process of moving the raw bash scripts to Ansible + Test Kitchena + Vagrant + Serverspec

Installation
------------

To install just copy this to your terminal:

    curl -L https://raw.githubusercontent.com/dklight/dotfiles/master/install.sh | /bin/bash

To Do list
----------
 * Ansible playbook for Ubuntu
 * Ansible playbook for Fedora
 * Serverspec check for
  * git
  * vim
  * zsh
  * gnu screen
 * Check for best choice for sshaskpass
 * Install and configure aditional tools like ansible, vagrant, docker, kitchen, etc
