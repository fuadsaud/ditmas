#!/usr/bin/env bash

function echoerr {
  (>&2 echo "${1}")
}

function logerr {
  echoerr "=== (ditmas) ===> ${1}"
}

function log {
  echo "=== (ditmas) ===> ${1}"
}

function lns-once {
  if [[ ! -h ${2} ]]; then
    ln -s "${1}" "${2}"
  fi
}

function case-linux-mac {
  case $(uname) in
    Linux)  echo "${1}";;
    Darwin) echo "${2}";;
  esac
}
