#!/usr/bin/env sh

set -euo pipefail

source ./utils.sh

export SRC_DIR=`case-linux-mac "~/src" "~/Source"`
export PERSONAL_SRC_DIR="$SRC_DIR/fuadsaud/"
export HOUDINI_DIR=~/.houdini
export OS_SETUP_SCRIPT=`case-linux-mac "./linux.sh" "./mac.sh"`
ZSH_BIN=$(case-linux-mac "/usr/bin/zsh" "/usr/local/bin/zsh")
