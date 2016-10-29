#/bin/bash

backup_folder_name=$HOME/old_dotfiles/$(date +%s)_old_dotfiles
mkdir -p $backup_folder_name

mv $HOME/.vimrc $backup_folder_name 2> /dev/null
mv $HOME/.vim $backup_folder_name 2> /dev/null
mv $HOME/.tmux.conf $backup_folder_name 2> /dev/null
mv $HOME/.zshrc $backup_folder_name 2> /dev/null

sudo apt-get update
sudo apt-get install git zsh vim build-essential python-dev

oh-my-zsh/tools/install.sh

git submodule update --init --recursive

# Install YouCompleteMe with clang
cd vim/bundle/youcompleteme/ && ./install.py --clang-completer && cd ../../..

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/tmux.conf $HOME/.tmux.conf 
ln -s $PWD/zshrc $HOME/.zshrc

chsh $USER -s `which zsh`
