#!/usr/bin/env sh

CODE_DIR=~/Code
REPO='https://github.com/fuadsaud/houdini'
PROJECTS_DIR="$CODE_DIR/fuadsaud/"
HOUDINI_DIR=~/.houdini
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
  htop \
  mas \
  tmate \
  tmux

brew tap neovim/neovim

brew install --HEAD \
  vim \
  neovim \
  ruby-install

brew cask install \
  java \
  spotify \
  virtualbox \
  google-chrome \
  google-drive \
  vlc \
  atom \
  dropbox \
  vagrant \
  go \
  heroku-toolbelt \
  docker \
  whatsapp \
  transmission \
  1password \
  spectacle \
  flux \
  iterm2-beta

local mac_store_apps=(
'Telegram Desktop'
'Slack'
'Twitter'
'Amphetamine' 
'Daisy Disk'
'Reeder 3'
'Pixelmator'
'Irvue'
'Chegou'
'CloudApp'
)

for appname in mac_store_apps; do
  mas search $appname | head -n 1 | cut -f 1 -d ' ' | xargs mas install
done

# fonts

brew tap caskroom/fonts

brew cask install \
  font-fira-mono \
  font-fira-mono-for-powerline \
  font-fira-sans

brew tap brona/iproute2mac
brew install iproute2mac

mkdir -p $PROJECTS_DIR

git clone --recursive $REPO "$PROJECTS_DIR"

ln -s $PROJECTS_DIR/houdini $HOUDINI_DIR

# vim

ln -s $HOUDINI_DIR/vim $VIM_DIR
ln -s $VIM_DIR/rc.vim ~/.vimrc
ln -s $VIM_DIR/grc.vim ~/.gvimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

# neovim

ln -s $HOUDINI_DIR/nvim ~/.config/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall

# zsh

ln -s $HOUDINI_DIR/zsh ~/.zsh
ln -s ~/.zsh/prezto ~/.zprezto
ln -s ~/.zsh/rc.zsh ~/.zshrc
ln -s ~/.zsh/env.zsh ~/.zshenv
ln -s ~/.zsh/profile.zsh ~/.zprofile
ln -s ~/.zsh/login.zsh ~/.zlogin
ln -s ~/.zsh/logout.zsh ~/.zlogout
ln -s ~/.zsh/preztorc.zsh ~/.zpreztorc

# bash

ln -s $HOUDINI_DIR/bash ~/.bash
ln -s ~/.bash/profile.bash ~/.bash_profile
ln -s ~/.bash/rc.bash ~/.bashrc

sudo echo $HOMEBREW_ZSH_BIN >> /etc/shells

chsh -s $HOMEBREW_ZSH_BIN

# tmux

ln -s $HOUDINI_DIR/tmux.conf ~/.tmux.conf

# rubocop

ln -s $HOUDINI_DIR/rubocop.yml ~/.rubocop.yml

# gem

ln -s $HOUDINI_DIR/gemrc ~/.gemrc

# git

ln -s $HOUDINI_DIR/git/ignore ~/.gitignore
ln -s $HOUDINI_DIR/git/config ~/.gitconfig

# ctags

ln -s $HOUDINI_DIR/ctags ~/.ctags

# leiningen

ln -s $HOUDINI_DIR/lein ~/.lein

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

ruby-install -s /tmp/ruby-src ruby

gem install \
  boom \
  pry \
  rubocop \
  m \
  bundler \
  teamocil \
  neovim

$HOUDINI_DIR/osx

# heroku

heroku plugins:install heroku-repo
