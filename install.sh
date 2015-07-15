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
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/bling/vim-airline
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/tpope/vim-fugitive.git
