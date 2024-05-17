#!/bin/zsh

if ! [ -f /opt/homebrew/bin/brew ]; then
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v brew &> /dev/null
then
    echo "Adding brew's shell env"
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install 1password 1password-cli chezmoi

echo "1Password will be opened to login and enable CLI Integration."
echo "Settings -> Developer -> Integrate with 1Password CLI"
read -p "Press enter to continue"
open -a 1Password
read -p "Press enter once CLI integration is enabled"

echo "Installing dotfiles..."
chezmoi init --apply rteabeault
echo "Installation Complete!"
