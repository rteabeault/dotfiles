#!/usr/bin/env bash

# Exit script immediately if any command fails
set -e

echo "Checking Homebrew installation status..."

if [ -x "/opt/homebrew/bin/brew" ]; then
    echo "It looks like homebrew is already installed."
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi


if command -v brew &> /dev/null; then
    echo "Homebrew is already installed!"
    brew --version
else
    echo "Homebrew not found. Starting installation..."
    
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "Homebrew installation completed successfully!"
fi

echo "Verifying installation..."
brew doctor

