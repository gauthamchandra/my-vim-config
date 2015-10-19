#!/bin/bash
echo "Pulling down latest vimrc changes..."
git pull

echo "Symlinking to ~/.vimrc"
ln -s `pwd`/vimrc ~/.vimrc

echo "Downloading Vundle..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing Plugins..."
vim +PluginInstall +qall

echo "Done."