#!/usr/bin/env bash

# Exit script immediately if any command fails
set -e

echo "Installing packages."
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle --file=$HOME/.local/share/setup/macos/Brewfile

