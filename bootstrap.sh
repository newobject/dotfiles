DOTFILES = "$HOME/dotfiles"

git clone https://github.com/newobject/dotfiles.git $DOTFILES

git clone http://github.com/gmarik/vundle.git $DOTFILES/vim/bundle/vundle

ln -s $DOTFILES/vimrc $HOME/.vimrc
ln -s $DOTFILES/gvimrc $HOME/.gvimrc
ln -s $DOTFILES/gvimrc.before $HOME/.gvimrc.before
ln -s $DOTFILES/vim $HOME/.vim

vim +BundleInstall! +BundleClean +q
