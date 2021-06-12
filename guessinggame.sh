#!/usr/bin/env bash

clear
declare -i numFiles
numFiles=$(find . -maxdepth 1 -not -type d | wc --lines)

function makeValidGuess {
    until read -p "Enter the number of files in current directory:  " guess;
    [[ "$guess" =~ ^[0-9]+$ ]]; do
        echo -e "\nPlease enter a non negative value!\n"
    done
}

while makeValidGuess; do
    if (( guess < numFiles )); then
        echo -e "\nYour guess is too small."
    elif (( guess > numFiles )); then
        echo -e "\nYour guess is too big."
    else
        echo -e "\nCongratulations! The guess $numFiles is correct!"
        exit
    fi
done
