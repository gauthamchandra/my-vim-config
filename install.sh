#!/bin/bash
echo "Pulling down latest vimrc changes..."
git pull

echo "Symlinking to ~/.vimrc"
ln -s `pwd`/vimrc ~/.vimrc

echo "Downloading Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing plugin dependencies"
pip install vim-vint

echo "Installing Plugins..."
vim +PluginInstall +qall

echo "Setting vimrc as executable"
chmod +x vimrc

echo "Done."
