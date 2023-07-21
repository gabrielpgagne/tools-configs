#!/bin/sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Backing up configs to repo.
- zsh + oh-my-zsh
- kitty terminal
- helix IDE"

cp "${HOME}/.zshrc" "${SCRIPT_DIR}/zsh/.zshrc"
cp -r "${HOME}/.config/kitty/" "${SCRIPT_DIR}/kitty/"
cp -r "${HOME}/.config/helix/" "${SCRIPT_DIR}/helix"
