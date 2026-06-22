#!/usr/bin/env bash

# https://macos-defaults.com/
echo "Setting Mac defaults..."
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "tilesize" -int "45"
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 60
killall Dock

defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "false"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1"
defaults write com.apple.finder "_FXEnableColumnAutoSizing" -bool "true"
defaults write com.apple.finder "ShowStatusBar" -bool "true"
killall Finder

defaults write com.apple.menuextra.clock "DateFormat" -string "EEE d MMM HH:mm:ss"

echo "Defaults set."
