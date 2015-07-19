set -e

# Set paths
PROJECTS=~/projects
DOTRC=$PROJECTS/dotrc

# Install git adn download configuration
sudo apt-get install -y git
mkdir -p $PROJECTS
cd $PROJECTS
git clone https://github.com:dklight/dotrc
ln -s $DOTRC/gitconfig ~/.gitconfig
cd ~/.

# Install oh-my-zsh
if [ ! -n "$ZSH" ]; then
  sudo apt-get install -y zsh
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  rm -f ~/.zshrc
  ln -s $DOTRC/zshrc ~/.zshrc
  ln -s $DOTRC/oh-my-zsh/custom/dklight.zsh ~/.oh-my-zsh/custom/

  # Install needed fonts
  mkdir -p $PROJECTS/fonts
  cd $PROJECTS/fonts
  git clone https://github.com/Lokaltog/powerline-fonts.git
  cd $PROJECTS/fonts/powerline-fonts
  ./install.sh

  # Make ZSH the default shell
  chsh -s $(which zsh)
fi

# Install GNU Screen
sudo apt-get install -y screen
ln -s %DOTRC/screenrc ~/.screenrc

# Install VIM
sudo apt-get install -y vim-gtk
rm -f ~/.vimrc
ln -s $DOTRC/vimrc ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle

# Use Vundle to manage plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins described in .vimrc
vim +PluginInstall
