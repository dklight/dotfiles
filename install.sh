set -e

# Set paths
PROJECTS=`pwd`
DOTFILES=$PROJECTS/dotfiles

# Install git adn download configuration
sudo apt-get update && apt-get install -y git
git clone https://github.com/dklight/dotfiles.git
ln -s $DOTFILES/_gitconfig ~/.gitconfig

# Init submodules
cd $DOTFILES
git submodule update --init --recursive
git submodule foreach --recursive git pull origin master
cd ..

# Install autoenv
ln -s $DOTFILES/_autoenv ~/.autoenv

# Install zsh and antigen
if [ ! -n "$ZSH" ]; then
  sudo apt-get install -y zsh
  ln -s $DOTFILES/_antigen ~/.antigen
  rm -f ~/.zshrc
  ln -s $DOTFILES/_zshrc ~/.zshrc

  # Install needed fonts
  powerline-fonts/install.sh

  # Install dircolors
  ln -s $DOTFILES/_dircolors ~/.dircolors

  # Make ZSH the default shell
  chsh -s $(which zsh)
fi

# Install GNU Screen
sudo apt-get install -y screen
ln -s $DOTFILES/_screenrc ~/.screenrc

# Install VIM
sudo apt-get install -y vim-nox
rm -f ~/.vimrc
ln -s $DOTFILES/_vimrc ~/.vimrc

rm -rf .vim
ln -s $DOTFILES/_vim ~/.vim
