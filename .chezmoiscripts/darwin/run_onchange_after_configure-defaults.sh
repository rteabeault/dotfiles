#!/bin/bash

# https://macos-defaults.com/

set -eufo pipefail

# Enable dock magnification
defaults write com.apple.dock magnification -bool true

# Set normal size of dock
defaults write com.apple.dock tilesize -int 40

# Set magnified size of dock
defaults write com.apple.dock largesize -int 60

# Auto hide doc
defaults write com.apple.dock autohide -bool true 

# Don't show recent apps in doc.
defaults write com.apple.dock show-recents -bool false

# Remove screenshot shadow
defaults write com.apple.dock disable-shadow -bool true

# Show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show path in bottom of finder
defaults write com.apple.finder ShowPathbar -bool true

# Set default finder view to column
# clmv - Column view
# nlsv - List view
# glyv - Gallery view
# icnv - Icon view
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Set delay until initial repeat
defaults write -g InitialKeyRepeat -int 15

# Set rate that keys repeat
defaults write -g KeyRepeat -int 2

killall Finder
