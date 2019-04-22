#!/usr/bin/env sh

set -euo pipefail

source ./utils.sh

# install homebrew

pacman -Syy

pacman_packages=(
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

# install brew casks

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

# install brew fonts

brew_fonts=(
  font-fira-sans
  font-fira-code
  font-comic-neue
)

brew tap caskroom/fonts
brew cask install ${brew_fonts[@]}

# install qmk formulae

brew tap osx-cross/avr
brew tap PX4/homebrew-px4
brew install \
  avr-gcc \
  dfu-programmer \
  gcc-arm-none-eabi \
  avrdude

# install mas apps

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
