Installation:
<br>
<br>

git clone https://www.github.com/NiTE97/dotfiles
<br>
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
<br> 
<br>   
cd dotfiles
<br>
mv ~/.zshrc ~/.zshrc_old
<br>
ln -s .zshrc ~/.zshrc
<br>
mv ~/.vimrc ~/.vimrc_old
<br>
ln -s .vimrc ~/.vimrc
<br>
ln -s .ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
<br>
sudo mv /usr/share/zsh/manjaro-zsh-prompt /usr/share/zsh/manjaro-zsh-prompt_old
<br>
sudo ln -s ./manjaro-zsh-prompt /usr/share/zsh/manjaro-zsh-prompt
<br>
sudo mv /usr/share/zsh/manjaro-zsh-config /usr/share/zsh/manjaro-zsh-config_old
<br>
sudo ln -s ./manjaro-zsh-config /usr/share/zsh/manjaro-zsh-config   
<br>
sudo mv /usr/share/zsh/p10k.zsh /usr/share/zsh/p10k.zsh_old
<br>
sudo ln -s ./p10k.zsh /usr/share/zsh/p10k.zsh
<br>

cd ~/.vim/plugged/YouCompleteMe

python3 install.py --all


