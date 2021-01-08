#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#
#
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
elif (( $+commands[xdg-open] )); then
  export BROWSER='xdg-open'
fi

#
# Editors
#

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export TERMINAL='alacritty'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

export HOUDINI_DIR="${HOME}/.ditmas"
export DITMAS_DIR="${HOME}/.ditmas"
export STOW_DIR="${DITMAS_DIR}/stow"
export SRC_DIR="${HOME}/Sources"
export BIN_DIR="${HOME}/.local/bin"
export OPT_DIR="${HOME}/.local/opt"
export XDG_DATA_HOME=${XDG_DATA_HOME:-"${HOME}/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"${HOME}/.config"}

export HOMEBREW_CASK_OPTS='--appdir=/Applications'
export GOPATH="${SRC_DIR}/go"
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export NVM_DIR="${OPT_DIR}/nvm"
export QMK_HOME="${SRC_DIR}/fuadsaud/qmk_firmware"

# Set the list of directories that Zsh searches for programs.
export PATH=$(tr -d $'\n ' <<< "
  $ANDROID_HOME/emulator:
  $ANDROID_HOME/tools:
  $ANDROID_HOME/platform-tools:
  $HOME/.cargo/bin:
  $BIN_DIR:
  /usr/local/{bin,sbin}:
  $PATH
")

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi
