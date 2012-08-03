DOTFILES="$HOME/dotfiles"

echo "\nClone dotfiles..."
git clone https://github.com/newobject/dotfiles.git $DOTFILES

echo "\nClone vundle..."
git clone https://github.com/gmarik/vundle.git $DOTFILES/vim/bundle/vundle

echo "\nLink files..."
ln -s $DOTFILES/vimrc $HOME/.vimrc
ln -s $DOTFILES/gvimrc $HOME/.gvimrc
ln -s $DOTFILES/gvimrc.before $HOME/.gvimrc.before
ln -s $DOTFILES/vim $HOME/.vim

echo "\nInstalling plugins using vundle..."
vi +BundleInstall! +BundleClean +q

echo "\nDone!"
