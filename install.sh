#!/usr/bin/env bash
set -e

OS="$(uname -s)"

# Functions taken from https://github.com/dongweiming/dotfiles bootstrap.sh

function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    if [ -e "${target}" ] && [ ! -L "${target}" ]; then
        mv $target $target.df.bak
    fi

    ln -sf ${source} ${target}
}

function unlink_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    if [ -e "${target}.df.bak" ] && [ -L "${target}" ]; then
        unlink ${target}
        mv $target.df.bak $target
    fi
}


if [ "$1" = "restore" ]; then
  for i in _*
    do
      unlink_file $i
    done
    exit
else
  # Dependencies
  PACKAGES='git zsh screen vim-nox python-pip'
  sudo apt-get update && sudo apt-get install -y $PACKAGES

  # Clone repo
  if [ -e "~/.dotfiles" ]; then
    echo "The ~/.dotfiles configuration already exists" && exit 1
  else
    git clone https://github.com/dklight/dotfiles.git ~/.dotfiles
  fi

  # Initialize submodules
  cd ~/.dotfiles
  git submodule update --init --recursive

  # Link files
  for i in _*
    do
      link_file $i
    done

  # Install needed fonts
  ~/.dotfiles/powerline-fonts/install.sh

  # Make ZSH the default shell
  chsh -s $(which zsh)

  # Initialize Vim
  vim +PluginInstall +qall 2>&1 > /dev/null

  # AWS
  sudo pip install awscli
fi
