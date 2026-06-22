#!/usr/bin/env bash

echo "Installing Rust..."
if command -v rustc &>/dev/null; then
  echo "Rust is already installed: $(rustc --version)"
else
  echo "Rust is not installed. Installing now..."
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
  source "$HOME/.cargo/env"
  echo "Installation complete: $(rustc --version)"
fi
