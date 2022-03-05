#Installation:

git clone https://www.github.com/NiTE97/dotfiles
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd dotfiles
mv ~/.zshrc ~/.zshrc_old
ln .zshrc ~/.zshrc
mv ~/.vimrc ~/.vimrc_old
ln .vimrc ~/.vimrc
ln .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

ln .config/* ~/.config

cd ~/.vim/plugged/YouCompleteMe

python3 install.py --all
