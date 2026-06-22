#!/usr/bin/env bash

# https://github.com/junegunn/fzf-git.sh
echo "Installing fzf-git.sh"

FZF_GIT_DIR="$HOME/.local/bin/fzf-git.sh"

if [ -d "$FZF_GIT_DIR" ]; then
  echo "$FZF_GIT_DIR already exists"
else
  echo "$FZF_GIT_DIR does not exist. Cloning"
  git clone https://github.com/junegunn/fzf-git.sh.git $FZF_GIT_DIR
fi
