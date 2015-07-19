set -e

# Set paths
PROJECTS=`pwd`
DOTRC=$PROJECTS/dotfiles

# Install git adn download configuration
sudo apt-get install -y git
git clone https://github.com:dklight/dotfiles
ln -s $DOTRC/_gitconfig ~/.gitconfig
cd ~/.

# Install zsh and antigen
if [ ! -n "$ZSH" ]; then
  sudo apt-get install -y zsh
  git clone https://github.com/zsh-users/antigen.git ~/.antigen
  rm -f ~/.zshrc
  ln -s $DOTRC/_zshrc ~/.zshrc

  # Install needed fonts
  mkdir fonts
  cd fonts
  git clone https://github.com/Lokaltog/powerline-fonts.git
  cd powerline-fonts
  ./install.sh

  # Make ZSH the default shell
  chsh -s $(which zsh)
fi

# Install GNU Screen
sudo apt-get install -y screen
ln -s $DOTRC/_screenrc ~/.screenrc

# Install VIM
sudo apt-get install -y vim-gtk
rm -f ~/.vimrc
ln -s $DOTRC/_vimrc ~/.vimrc
mkdir -p ~/.vim/bundle

# Use Vundle to manage plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins described in .vimrc
vim +PluginInstall
