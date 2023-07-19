#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -z "$1" ]
then # Export mode
  echo "Backing up configs to repo.
Make sure the following software is installed:
  - zsh + oh-my-zsh
  - kitty terminal
  - helix IDE"

  cp "${HOME}/.zshrc" "${SCRIPT_DIR}/zsh/.zshrc"
  cp -r "${HOME}/.config/kitty/kitty.conf" "${SCRIPT_DIR}/kitty/kitty.conf"
  cp -r "${HOME}/.config/helix/" "${SCRIPT_DIR}/helix"

else # Import mode
  echo "Importing configs from repo."

  mkdir -p "${HOME}/.config/kitty"
  mkdir -p "${HOME}/.config/helix"

  cp "${SCRIPT_DIR}/zsh/.zshrc" "${HOME}/.zshrc" 
  cp -r "${SCRIPT_DIR}/kitty/kitty.conf" "${HOME}/.config/kitty/kitty.conf" 
  cp -r "${SCRIPT_DIR}/helix" "${HOME}/.config/helix/" 

fi  