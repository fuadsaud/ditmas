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
elif command -v xdg-open >> /dev/null; then
  export BROWSER='xdg-open'
fi

#
# TTY
#
export TERMINAL='kitty'

#
# Web Browser
#
if command -v google-chrome-stable >> /dev/null; then
  export WEB_BROWSER='google-chrome-stable'
fi

#
# Editors
#

export EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

export DITMAS_DIR="${HOME}/.ditmas"
export DITMAS_HOST_DIR="${DITMAS_DIR}/hosts/$(hostname).d"
export STOW_DIR="${DITMAS_DIR}/stow"
export SRC_DIR="${HOME}/Sources"
export LOCAL_BIN_DIR="${HOME}/.local/bin"
export XDG_DATA_HOME=${XDG_DATA_HOME:-"${HOME}/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-"${HOME}/.config"}
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/pass"
export RIPGREP_CONFIG_PATH="${XDG_CONFIG_HOME}/ripgreprc"

export NVM_DIR="${XDG_DATA_HOME}/nvm"
export PYENV_ROOT="${XDG_DATA_HOME}/pyenv"
export QMK_HOME="${SRC_DIR}/fuadsaud/qmk_firmware"
export GOPATH="${SRC_DIR}/go"
export GO_PATH="${GOPATH}"
export PACMAN_BIN="paru"

#
# Homebrew
#
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
export HOMEBREW_BUNDLE_FILE_GLOBAL="${DITMAS_HOST_DIR}/Brewfile"

# this is a bit dirty, but bbin will likely change the default dir (https://github.com/babashka/bbin/issues/35)
babashka_bbin_dir="${HOME}/.local/share/.babashka/bbin/bin"

#
# Paths
#

# Set the list of directories to search for programs.
export PATH=$(tr -d $'\n ' <<< "
  $babashka_bbin_dir:
  $GOPATH/bin:
  $HOME/.cargo/bin:
  $LOCAL_BIN_DIR:
  /opt/homebrew/opt/libpq/bin:
  /opt/homebrew/sbin:
  /opt/homebrew/bin:
  $PATH
")

export FPATH=$(tr -d $'\n ' <<< "
  $(brew --prefix)/share/zsh/site-functions:
  $FPATH
")

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X to enable it.
export LESS='-g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
if command -v lesspipe.sh >> /dev/null; then
  eval "$(lesspipe.sh)"
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

export SSH_AUTH_SOCK="~/.1password/agent.sock"
