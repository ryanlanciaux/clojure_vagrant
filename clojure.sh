#!/bin/bash
HOME="/home/vagrant"
PROV_FILE=.vagrant_provision.lock

#inspired by https://github.com/junwatu/nodejs-vagrant
if [ -f $PROV_FILE ];
then
    echo "Already Provisioned"
else
  sudo apt-get -qy update
  apt-get install git tmux vim software-properties-common -y
  apt-get install clojure -y
  mkdir $HOME/bin
  wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
  mv lein $HOME/bin/.

  chmod a+x $HOME/bin/lein
  $HOME/bin/lein

  wget https://raw.githubusercontent.com/ryanlanciaux/dotfiles/master/.vimrc
  wget https://raw.githubusercontent.com/ryanlanciaux/dotfiles/master/.tmux.conf

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

  chmod -R 777 $HOME/.vim

  mkdir $HOME/.vim/colors

  wget https://raw.githubusercontent.com/Lokaltog/vim-distinguished/develop/colors/distinguished.vim -P $HOME/.vim/colors/
fi
