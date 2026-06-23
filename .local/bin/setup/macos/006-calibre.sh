#!/usr/bin/env bash

CALIBRE_PREF_DIR="$HOME/Library/Preferences/calibre"
if [ ! -d "$CALIBRE_PREF_DIR" ]; then
  mkdir -p "$CALIBRE_PREF_DIR"
fi

if [ ! -f "Library/Preferences/calibre/macos-env.txt" ]; then
  cp "$HOME/.local/share/setup/macos/calibre/macos-env.txt" "$CALIBRE_PREF_DIR"
  echo "Copied macos-env.txt to $CALIBRE_PREF_DIR successfully."
else
  echo "$CALIBRE_PREF_DIR/macos-env.txt already exists. Copy skipped."
fi
