#!/bin/bash

git pull;

#Nur wenn Plug noch nicht installiert ist!
#echo 'Downloading plug.vim...'
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'Alte Dateien verschieben...';
mv ~/.zshrc ~/.zshrc_old
mv ~/.vimrc ~/.vimrc_old
sudo mv /usr/share/zsh/manjaro-zsh-config /usr/share/zsh/manjaro-zsh-config_old
sudo mv /usr/share/zsh/manjaro-zsh-prompt /usr/share/zsh/manjaro-zsh-prompt_old
sudo mv /usr/share/zsh/p10k.zsh /usr/share/zsh/p10k.zsh_old

echo 'Neue Dateien anlegen...';
ln -f .zshrc ~/.zshrc
ln -f .vimrc ~/.vimrc
ln -f .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
ln -f login.sh ~/.config/autostart-scripts/login.sh
sudo ln -f manjaro-zsh-prompt /usr/share/zsh/manjaro-zsh-prompt
sudo ln -f manjaro-zsh-config /usr/share/zsh/manjaro-zsh-config
sudo ln -f p10k.zsh /usr/share/zsh/p10k.zsh
sudo ln -f styli.sh /usr/bin/styli.sh

vim -c :PlugInstall

# Nur wenn ycm noch nicht installiert ist!
#cd ~/.vim/plugged/YouCompleteMe
#python3 install.py --all


source ~/.zshrc;
