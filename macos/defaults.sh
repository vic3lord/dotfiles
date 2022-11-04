# Dock minimize effect
defaults write com.apple.dock "mineffect" -string "scale"

# Do not show recents on dock
defaults write com.apple.dock "show-recents" -bool "false"

# Safari show full URL
defaults write com.apple.safari "ShowFullURLInSmartSearchField" -bool "true"

# Finder show extension
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Clean trashbin after 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"
