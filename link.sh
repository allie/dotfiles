# Symlink dotfiles into their correct locations on macOS
DIR=`pwd`
cd $HOME

# zsh
ln -sf $DIR/.zshrc $HOME/.zshrc

# vscode
mkdir -p $DIR/vscode/snippets
ln -sf $DIR/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -sf $DIR/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
ln -sf $DIR/vscode/snippets/ $HOME/Library/Application\ Support/Code/User
