#!/usr/bin/env sh

set -euo pipefail

function echoerr {
  (>&2 echo $1)
}

function log {
  echoerr "=== (houdini) ===> ${1}"
}

function lns-once {
  if [[ ! -e $2 ]]; then
    ln -s $1 $2
  fi
}

function case-linux-mac {
  case `uname` in
    Linux)  $1;;
    Darwin) $2;;
  esac
}

SRC_DIR=$(case-linux-mac "~/src" "~/Source")
REPO='https://github.com/fuadsaud/houdini'
PERSONAL_SRC_DIR="$SRC_DIR/fuadsaud/"
HOUDINI_DIR=~/.houdini
CONFIG_DIR=~/.config
VIM_DIR=~/.vim
GIT_DIR=~/.git

HOMEBREW_ZSH_BIN=/usr/local/bin/zsh

if [[ ! -x "$(command -v brew)" ]]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

brew_cask_formulae=(
  1password
  atom
  docker
  dropbox
  figma
  flux
  google-chrome
  google-backup-and-sync
  iterm2
  itsycal
  java
  karabiner-elements
  spectacle
  spotify
  transmission
  vlc
  whatsapp
)

brew cask install ${brew_cask_formulae[@]}

brew_formulae=(
  ag
  asciinema
  awscli
  bash
  chruby
  clojure
  cowsay
  ctags
  curl
  fzf
  git
  heroku/brew/heroku
  htop
  hub
  iproute2mac
  jq
  leiningen
  mas
  neovim/neovim/neovim
  python
  fasd
  reattach-to-user-namespace
  trash
  tree
  unrar
  tmux
  vim
  youtube-dl
  homebrew/cask-drivers/yubico-authenticator
  zsh
)

brew install ${brew_formulae[@]}
brew install --HEAD ruby-install

# fonts

brew_fonts=(
  font-fira-sans
  font-fira-code
  font-comic-neue
)

brew tap caskroom/fonts
brew cask install ${brew_fonts[@]}

# MAS apps

log 'Installing MAS apps'

mac_store_apps=(
  'Telegram Desktop'
  'Slack'
  'Amphetamine'
  'Daisy Disk'
  'Reeder 3'
  'Pixelmator'
  'Irvue'
  'Shazam'
)

for appname in "${mac_store_apps[@]}"; do
  log "Installing ${appname}"
  mas search "${appname}" | head -n 1 | grep -Eo '\d+' | head -n 1 | xargs mas install
done

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

# vim

lns-once $HOUDINI_DIR/vim $VIM_DIR
lns-once $VIM_DIR/rc.vim ~/.vimrc
lns-once $VIM_DIR/grc.vim ~/.gvimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

# neovim

mkdir -p ${CONFIG_DIR}

lns-once $HOUDINI_DIR/nvim ${CONFIG_DIR}

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim +PlugInstall +qall

# zsh

lns-once $HOUDINI_DIR/zsh ~/.zsh
lns-once ~/.zsh/prezto ~/.zprezto
lns-once ~/.zsh/rc.zsh ~/.zshrc
lns-once ~/.zsh/env.zsh ~/.zshenv
lns-once ~/.zsh/profile.zsh ~/.zprofile
lns-once ~/.zsh/login.zsh ~/.zlogin
lns-once ~/.zsh/logout.zsh ~/.zlogout
lns-once ~/.zsh/preztorc.zsh ~/.zpreztorc

# bash

lns-once $HOUDINI_DIR/bash ~/.bash
lns-once ~/.bash/.bash_profile ~/.bash_profile
lns-once ~/.bash/.bashrc ~/.bashrc


if ! $(cat /etc/shells | grep); then
  log "appending ${HOMEBREW_ZSH_BIN} to /etc/shells"

  echo $HOMEBREW_ZSH_BIN | sudo tee -a /etc/shells > /dev/null
fi

chsh -s $HOMEBREW_ZSH_BIN

# stow packages

stow tmux
stow screen
stow ruby
stow git
stow ctags
stow lein
stow karabiner

# heroku

heroku plugins:install heroku-repo

$HOUDINI_DIR/osx

# QMK

git clone https://github.com/fuadsaud/qmk_firmware.git $PERSONAL_SRC_DIR/

brew tap osx-cross/avr
brew tap PX4/homebrew-px4
brew install \
  avr-gcc \
  dfu-programmer \
  gcc-arm-none-eabi \
  avrdude
