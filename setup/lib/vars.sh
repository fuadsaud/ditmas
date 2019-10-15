#!/usr/bin/env bash

set -euo pipefail

current_dir=$(dirname "${BASH_SOURCE[0]}")

source "${current_dir}/utils.sh"

export SRC_DIR="${HOME}/Sources"
export PERSONAL_SRC_DIR="$SRC_DIR/fuadsaud"
export HOUDINI_DIR="${HOME}/.houdini"
export HOUDINI_SETUP_DIR="${HOUDINI_DIR}/setup"
export OS_SETUP_SCRIPT=$(case-linux-mac "${HOUDINI_SETUP_DIR}/bin/linux" "${HOUDINI_SETUP_DIR}/bin/mac")
export ZSH_BIN=$(which zsh)
