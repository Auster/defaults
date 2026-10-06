#!/bin/bash

set -x
set -e

# HOSTNAME="MacBookPro"

# Set computer name (as done via System Preferences → Sharing)
# sudo scutil --set ComputerName "$HOSTNAME"
# sudo scutil --set HostName "$HOSTNAME"
# sudo scutil --set LocalHostName "$HOSTNAME"

# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$HOSTNAME"

# Enable automatic critical software updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable Safari's Develop menu and the Web Inspector
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Enable Safari's internal debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Set menu bar clock to show date and time with flashing separators
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"

# Set menu bar clock date format to "EEE d MMM HH:mm:ss"
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

# Set fast key repeat rate
defaults write com.apple.Accessibility KeyRepeat -int 1
defaults write com.apple.Accessibility KeyRepeatDelay -float "0.5"
defaults write com.apple.Accessibility KeyRepeatInterval -float "0.083333333"

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Set Finder default view style to list view
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show full POSIX path in Finder title bar
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Avoid creating .DS_Store files on USB and external drives
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable .DS_Store and xattrs on network shares
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

# Set screenshot location to ~/Pictures/Screenshots
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots

# Set iOS Simulator screenshot location to ~/Pictures/Simulator_Screenshots
mkdir -p ~/Pictures/Simulator_Screenshots
defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Pictures/Simulator_Screenshots"

# Set screenshot format to PNG
defaults write com.apple.screencapture type png

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Disable the sound effects on boot
defaults write NSGlobalDomain com.apple.sound.beep.volume -int 0

# Disable automatic capitalization, smart dashes, automatic period substitution, and smart quotes
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Show battery percentage in menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# Diactiivate Apple Intelligence
defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool "false"

killall SystemUIServer
killall Finder
killall Safari

echo "Mac settings have been applied. Some changes may require a restart to take effect."
