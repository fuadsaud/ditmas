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
if (( $+commands[neofetch] )); then
  neofetch
elif (( $+commands[doge] )); then
  doge
elif (( $+commands[fortune] )); then
  msg=$(fortune -a | cowsay -f milk)

  if (( $+commands[lolcat] )); then
    echo $msg | lolcat
  else
    echo $msg
  fi

  print
fi

