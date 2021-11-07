# Rosetta
/usr/sbin/softwareupdate --install --all --agree-to-license
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Oh My Zsh (https://github.com/ohmyzsh/ohmyzsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Keyboard
# TODO: System Preferences -> Keyboard -> Modifier Keys -> Change "Caps Lock" to "Escape"

# --- Package Managers ---

# Homebrew (https://github.com/Homebrew/brew)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --global

# --- Configuration ---

# iTerm2
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2.plist "NoSyncNeverRemindPrefsChangesLostForFile_selection" -int 2
defaults write com.googlecode.iterm2.plist NoSyncNeverRemindPrefsChangesLostForFile -bool true

# --- GPG ---

keybase pgp export | gpg --import
keybase pgp export --secret | gpg --batch --import
# Enter Keybase passphrase and a new GPG passphrase as requested.

gpg --edit-key 587E40F3F7768A71
# Enter "trust" -> "5" -> "y" -> "quit"
