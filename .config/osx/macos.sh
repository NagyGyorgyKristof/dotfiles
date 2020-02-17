#!/usr/bin/env bash

###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

###############################################################################
# Dock, Dashboard, and hot corners                                            #
###############################################################################

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

#disable the dashboard
defaults write com.apple.dashboard mcx-disabled -boolean TRUE; killall Dock

#decrease autohide delay of the dock
defaults write com.apple.dock autohide-delay -float 0; killall Dock

# Automatically hide and show the Dock
defaults write com.apple.dock autohide-time-modifier -float 0; killall Dock

###############################################################################
# Finder                                                                      #
###############################################################################

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Set ~/work as the default location for new Finder windows
mkdir -p "${HOME}/work/"
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/work/"

# Use column view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"


###############################################################################
# Screenshot                                                                  #
###############################################################################

#disable the shadow at screenshots
defaults write com.apple.screencapture disable-shadow -bool TRUE; killall SystemUIServer

#change the location of the screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots


###############################################################################
# Mail                                                                        #
###############################################################################

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false


# iterm
defaults write com.googlecode.iterm2 "PrefsCustomFolder" -string "$HOME/.config/iterm"
defaults write com.googlecode.iterm2 "LoadPrefsFromCustomFolder" -bool true

###############################################################################
# Kill affected applications                                                  #
###############################################################################

for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Mail"; do
	killall "${app}" &> /dev/null
done

########################
# APPLICATIONS  (application installations should be placed in the bootstap file)  
########################

##home-brew
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#cask
#brew install cask

#sublime text
#brew cask install sublime-text

#lf
#brew install lf

#jetbrains-toolbox
#brew cask install jetbrains-toolbox

#itsycal
#brew cask install itsycal

#appcleaner
#brew cask install appcleaner

#google-chrome
#brew cask install google-chrome

#lol
#brew cask install league-of-legends

#postman
#brew cask install postman 

#nightowl
#brew cask intsall nightowl

#franz
#brew cask install franz

#iterm2
#brew cask intsall iterm2

#vanilla
#brew cask install vanilla

#vlc
#brew cask install vlc

#viber
#brew cask install viber

#helium
#brew cask install helium

#adobe-connect
#brew cask install adobe-connect

#hyperswitch
#brew cask install hyperswitch

#google-backup-and-sync
#brew cask install google-backup-and-sync

