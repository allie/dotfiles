# Symlink dotfiles into their correct locations on macOS
DIR=`pwd`
cd $HOME
ln -sf $DIR/.zshrc $HOME/.zshrc

