#!/usr/bin/env bash

declare -i guess=0
declare -i try=0
declare -i amount=$(ls | wc -l)

function guessing_game () {
  echo "Hello! Guess the number of files in current directory, please!"

  while [[ $guess -ne $amount ]] ; do
    try=try+1
    read -p "Your guess: " guess
    if [[ ${guess} -lt ${amount} ]] ; then
      echo "Try higher..."
    elif [[ ${guess} -gt ${amount} ]] ; then
      echo "Try lower..."
    fi
  done
  echo "Great, you guessed correctly in ${try} tries!"
}

guessing_game
