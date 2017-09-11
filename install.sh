#/bin/bash

git submodule update --init --recursive

backup_folder_name=$HOME/old_dotfiles/$(date +%s)_old_dotfiles
mkdir -p $backup_folder_name

mv $HOME/.vimrc $backup_folder_name 2> /dev/null
mv $HOME/.vim $backup_folder_name 2> /dev/null
mv $HOME/.tmux.conf $backup_folder_name 2> /dev/null
mv $HOME/.profile $backup_folder_name 2> /dev/null

sudo apt-get -y install git vim cmake tmux build-essential python-dev

cd bash-it && ./install.sh --silent && cd ..

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/tmux.conf $HOME/.tmux.conf 
ln -s $PWD/profile $HOME/.profile

git config --global core.editor "vim"
