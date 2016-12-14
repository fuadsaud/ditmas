echo "LOADING BASH RC"

if [[ -s "${HOME}/.nurc" ]]; then
  source ~/.nurc
fi

source ~/.zsh/aliases.zsh

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

chruby 2.3
