#/bin/bash

git submodule update --init --recursive

backup_folder_name=$HOME/old_dotfiles/$(date +%s)_old_dotfiles
mkdir -p $backup_folder_name

mv $HOME/.vimrc $backup_folder_name 2> /dev/null
mv $HOME/.vim $backup_folder_name 2> /dev/null
mv $HOME/.tmux.conf $backup_folder_name 2> /dev/null
mv $HOME/.zshrc $backup_folder_name 2> /dev/null
mv $HOME/.config/Code/User/settings.json $backup_folder_name 2> /dev/null

sudo add-apt-repository ppa:webupd8team/java 
sudo apt-get update
sudo apt-get -y install git zsh vim cmake tmux build-essential python-dev \
  oracle-java8-installer oracle-java8-set-default

oh-my-zsh/tools/install.sh

# Install YouCompleteMe with clang
cd vim/bundle/youcompleteme/ && ./install.py --clang-completer && cd ../../..

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/tmux.conf $HOME/.tmux.conf 
ln -s $PWD/zshrc $HOME/.zshrc
ln -s $PWD/code/settings.json $HOME/.config/Code/User/settings.json

chsh -s `which zsh`
