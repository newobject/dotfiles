DOTFILES = "$HOME/dotfiles"

git clone https://github.com/newobject/dotfiles.git $DOTFILES
cd $DOTFILES
git submodule update

ln -s $DOTFILES/vimrc $HOME/.vimrc
ln -s $DOTFILES/gvimrc $HOME/.gvimrc
ln -s $DOTFILES/gvimrc.before $HOME/.gvimrc.before
ln -s $DOTFILES/vim $HOME/.vim

vim +BundleInstall! +BundleClean +q
