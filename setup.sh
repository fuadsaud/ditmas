#!/usr/bin/env sh

CODE_DIR=~/Code
PROJECTS_DIR="$CODE_DIR/fuadsaud/"
JARVIS_DIR=~/.jarvis
VIM_DIR=~/.vim
GIT_DIR=~/.git

HOMEBREW_ZSH_BIN=/usr/local/bin/zsh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew install zsh \
  reattach-to-user-namespace \
  ag \
  git \
  hub \
  curl \
  python \
  youtube-dl \
  chruby \
  fasd \
  fzf \
  tree \
  trash \
  ctags \
  unrar \
  p7zip \
  jq \
  asciinema \
  cowsay \
  leiningen \
  neovim/neovim/neovim

brew install --HEAD \
  vim \
  tmux \
  ruby-install

brew cask install \
  java \
  spotify \
  virtualbox \
  google-chrome \
  google-drive \
  vlc \
  atom \
  clipmenu \
  dropbox \
  vagrant \
  go \
  heroku-toolbelt \
  docker \
  whatsapp

# fonts

brew tap caskroom/fonts

brew cask install \
  font-fira-mono \
  font-fira-mono-for-powerline \
  font-fira-sans

brew tap brona/iproute2mac
brew install iproute2mac

brew tap nviennot/tmate
brew install tmate

mkdir -p $PROJECTS_DIR

hub clone --recursive fuadsaud/J.A.R.V.I.S "$PROJECTS_DIR/J.A.R.V.I.S"

ln -s ~/Code/fuadsaud/J.A.R.V.I.S $JARVIS_DIR

# vim

ln -s $JARVIS_DIR/vim $VIM_DIR
ln -s $VIM_DIR/rc.vim ~/.vimrc
ln -s $VIM_DIR/grc.vim ~/.gvimrc

mkdir -p ~/.config/nvim
ln -s $VIM_DIR/rc.vim ~/.config/nvim/init.vim

hub clone VundleVim/Vundle.vim $VIM_DIR/bundle/Vundle.vim

vim +PluginInstall +qall

# zsh

ln -s $JARVIS_DIR/zsh ~/.zsh
ln -s ~/.zsh/prezto ~/.zprezto
ln -s ~/.zsh/rc.zsh ~/.zshrc
ln -s ~/.zsh/env.zsh ~/.zshenv
ln -s ~/.zsh/profile.zsh ~/.zprofile
ln -s ~/.zsh/login.zsh ~/.zlogin
ln -s ~/.zsh/logout.zsh ~/.zlogout
ln -s ~/.zsh/preztorc.zsh ~/.zpreztorc

# bash

ln -s $JARVIS_DIR/bash ~/.bash
ln -s ~/.bash/profile.bash ~/.bash_profile
ln -s ~/.bash/rc.bash ~/.bashrc

sudo echo $HOMEBREW_ZSH_BIN >> /etc/shells

chsh -s $HOMEBREW_ZSH_BIN

# tmux

ln -s $JARVIS_DIR/tmux.conf ~/.tmux.conf

# rubocop

ln -s $JARVIS_DIR/rubocop.yml ~/.rubocop.yml

# gem

ln -s $JARVIS_DIR/gemrc ~/.gemrc

# git

ln -s $JARVIS_DIR/git/ignore ~/.gitignore
ln -s $JARVIS_DIR/git/config ~/.gitconfig

# python

pip install --upgrade pip setuptools
pip install \
  virtualenv \
  virtualenvwrapper \
  powerline-status \
  psutil \
  speedtest-cli \
  doge \
  neovim

# ruby

ruby-install ruby

gem install \
  boom \
  pry \
  rubocop \
  m \
  bundler \
  teamocil

./.jarvis/osx

# heroku

heroku plugins:install heroku-repo
