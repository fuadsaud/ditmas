#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

if [[ -s "${HOME}/.profile" ]]; then
  source "${HOME}/.profile"
fi
