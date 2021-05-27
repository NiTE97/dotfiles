Installation:

git clone https://www.github.com/NiTE97/dotfiles

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cd dotfiles

mv ~/.zshrc ~/.zshrc_old
ln -s .zshrc ~/.zshrc
mv ~/.vimrc ~/.vimrc_old
ln -s .vimrc ~/.vimrc

ln -s .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py

sudo mv /usr/share/zsh/manjaro-zsh-prompt /usr/share/zsh/manjaro-zsh-prompt_old
sudo ln -s ./manjaro-zsh-prompt /usr/share/zsh/manjaro-zsh-prompt
sudo mv /usr/share/zsh/manjaro-zsh-config /usr/share/zsh/manjaro-zsh-config_old
sudo ln -s ./manjaro-zsh-config /usr/share/zsh/manjaro-zsh-config   


cd ~/.vim/plugged/YouCompleteMe
python3 install.py --all


