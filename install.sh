#/bin/bash

git submodule update --init --recursive

backup_folder_name=$HOME/old_dotfiles/$(date +%s)_old_dotfiles
mkdir -p $backup_folder_name

mv $HOME/.vimrc $backup_folder_name 2> /dev/null
mv $HOME/.vim $backup_folder_name 2> /dev/null
mv $HOME/.tmux.conf $backup_folder_name 2> /dev/null
mv $HOME/.profile $backup_folder_name 2> /dev/null
mv $HOME/.config/nvim/init.vim $backup_folder_name 2> /dev/null

if test "$(uname)" = "Darwin" ; then
  # MacOS
  brew install zsh zsh-completions nvim
else
  # Linux
  sudo apt-get install software-properties-common
  sudo add-apt-repository -y ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get -y install \
    build-essential \
    cmake tmux mosh \
    python-dev \
    nodejs npm \
    zsh \
    neovim

  #cd bash-it && ./install.sh --silent && cd ..
fi

pip3 install --user pynvim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/tmux.conf $HOME/.tmux.conf 
ln -s $PWD/profile $HOME/.profile
mkdir -p $HOME/.config/nvim
ln -s $PWD/vimrc $HOME/.config/nvim/init.vim

git config --global core.editor "vim"

vim +PlugInstall +GoInstallBinaries +qall
nvim +PlugInstall +GoInstallBinaries +UpdateRemotePlugins +qall 
