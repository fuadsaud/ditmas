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

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  $ANDROID_HOME/tools
  $ANDROID_HOME/platform-tools
  ~/.houdini/nu/bin
  ~/.houdini/bin
  ~/.opam/system/bin
  ~/.cabal/bin
  ~/.go/bin
  /usr/local/share/npm/bin
  /usr/local/heroku/bin
  /usr/local/{bin,sbin}
  $path
)

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

#
# Ruby Bundler Binstubs
#

# Remove the need for bundle exec ... or ./bin/...
# by adding ./bin to path if the current project is trusted.
function set_local_bin_path() {
  # Replace any existing local bin paths with our new one
  export PATH="${1:-""}`echo "$PATH"|sed -e 's,[^:]*\.git/[^:]*bin:,,g'`"
}

function add_trusted_local_bin_to_path() {
  if [[ -d "$PWD/.git/safe" ]]; then
    # We're in a trusted project directory so update our local bin path
    set_local_bin_path "$PWD/.git/safe/../../bin:"
  fi
}

# Make sure add_trusted_local_bin_to_path runs after chruby so we
# prepend the default chruby gem paths.
if [[ -n "$ZSH_VERSION" ]]; then
  if [[ ! "$preexec_functions" == *add_trusted_local_bin_to_path* ]]; then
    preexec_functions+=("add_trusted_local_bin_to_path")
  fi
fi

export HOMEBREW_CASK_OPTS='--appdir=/Applications'
# export JAVA_HOME=`/usr/libexec/java_home`
export JETTY_HOME="/usr/local/Cellar/jetty/9.4.7.v20170914/libexec/"
export GOPATH="$HOME/.go"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export NVM_DIR="$HOME/.nvm"
export VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python2'

# source "$(brew --prefix nvm)/nvm.sh"
if [[ -s "${HOME}/.env.sh" ]]; then
  source "$HOME/.env.sh"
fi

# Fixes python locale crash. I believe prezto should be setting this, but it's not the case.
export LC_ALL=$LANG

export PATH="$HOME/.cargo/bin:$PATH"
