#!/usr/bin/env sh

CODE_DIR     = ~/Code
PROJECTS_DIR = "$CODE_DIR/fuadsaud/"
JARVIS_DIR   = ~/.jarvis
VIM_DIR      = ~/.vim
GIT_DIR      = ~/.git

HOMEBREW_ZSH_BIN = /usr/local/bin/zsh

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
  ruby-install \
  fasd \
  tree \
  trash \
  ctags \
  unrar \
  p7zip \
  jq \
  caskroom/cask/brew-cask

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
  otto \
  go \
  transmission \
  handbrake

# fonts

brew tap caskroom/fonts

brew cask install \
  font-fira-mono \
  font-fira-mono-for-powerline \
  font-fira-sans

brew tap brona/iproute2mac
brew install iproute2mac

mkdir -p $PROJECTS_DIR

hub clone --recursive fuadsaud/J.A.R.V.I.S "$PROJECTS_DIR/J.A.R.V.I.S"

ln -s ~/Code/fuadsaud/J.A.R.V.I.S $JARVIS_DIR

# vim

ln -s $JARVIS_DIR/.vim $VIM_DIR
ln -s $VIM_DIR/rc.vim ~/.vimrc
ln -s $VIM_DIR/grc.vim ~/.gvimrc

hub clone VundleVim/Vundle.vim $VIM_DIR/bundle/Vundle.vim

vim +PluginInstall +qall

# zsh

ln -s $JARVIS_SYNLINK/zsh ~/.zsh
ln -s ~/.zsh/prezto ~/.zprezto
ln -s ~/.zsh/rc.zsh ~/.zshrc
ln -s ~/.zsh/env.zsh ~/.zshenv
ln -s ~/.zsh/profile.zsh ~/.zprofile
ln -s ~/.zsh/login.zsh ~/.zlogin
ln -s ~/.zsh/logout.zsh ~/.zlogout
ln -s ~/.zsh/preztorc.zsh ~/.zpreztorc

sudo echo $HOMEBREW_ZSH_BIN >> /etc/shells

chsh -s $HOMEBREW_ZSH_BIN

# tmux

ln -s $JARVIS_DIR/tmux.conf ~/.tmux.conf

# git

ln -s $JARVIS_DIR/git $GIT_DIR
ln -s $GIT_DIR/ignore ~/.gitignore
ln -s $GIT_DIR/config ~/.gitconfig

# python

pip install --upgrade pip setuptools
pip install \
  virtualenv \
  virtualenvwrapper \
  powerline-status \
  psutil \
  Pygments \
  speedtest-cli \
  doge

# ruby

ruby-install ruby

gem install \
  boom \
  pry \
  rubocop \
  m \
  bundler

./.jarvis/osx
