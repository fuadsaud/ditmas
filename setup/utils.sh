#!/usr/bin/env sh

function echoerr {
  (>&2 echo $1)
}

function log {
  echoerr "=== (houdini) ===> ${1}"
}

function lns-once {
  if [[ ! -e $2 ]]; then
    ln -s $1 $2
  fi
}

function case-linux-mac {
  case `uname` in
    Linux)  $1;;
    Darwin) $2;;
  esac
}

