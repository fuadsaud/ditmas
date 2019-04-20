#!/usr/bin/env sh

set -euo pipefail

source ./utils.sh

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
