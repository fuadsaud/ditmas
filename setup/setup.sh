#!/usr/bin/env sh

set -euo pipefail

source ./utils.sh
source ./vars.sh

source $OS_SETUP_SCRIPT

# python

python_packages=(
  virtualenv
  virtualenvwrapper
  powerline-status
  psutil
  speedtest-cli
  doge
  neovim
)

pip3 install --upgrade pip setuptools
pip3 install ${python_packages[@]}

# ruby

ruby-install -s /tmp/ruby-src ruby

# links

mkdir -p $PERSONAL_SRC_DIR

lns-once $HOUDINI_DIR $PERSONAL_SRC_DIR/houdini

# chsh

chsh -s $ZSH_BIN

# stow packages

stow zsh
stow git
stow vim
stow nvim
stow tmux
stow screen
stow i3
stow ruby
stow ctags
stow lein
stow karabiner

# vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

# neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall

# heroku

heroku plugins:install heroku-repo

# qmk

git clone https://github.com/fuadsaud/qmk_firmware.git $PERSONAL_SRC_DIR/
