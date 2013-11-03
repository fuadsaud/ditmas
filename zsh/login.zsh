#
# Executes commands at login post-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Execute code that does not affect the current session in the background.
{
  # Compile the completion dump to increase startup speed.
  zcompdump="${ZDOTDIR:-$HOME}/.zcompdump"
  if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
    zcompile "$zcompdump"
  fi
} &!

# Print a random, hopefully interesting, adage.
if (( $+commands[fortune] )); then
  msg=$(fortune -a | cowsay -f milk)

  # Checks for lolcat availability
  # if lolcat -v > /dev/null 2> /dev/null; then
  #   echo $msg | lolcat
  if doge -v > /dev/null 2> /dev/null; then
    doge
  else
    echo $msg
  fi

  print
fi

