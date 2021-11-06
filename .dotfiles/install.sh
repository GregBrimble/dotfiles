# Rosetta
/usr/sbin/softwareupdate --install --all --agree-to-license
/usr/sbin/softwareupdate --install-rosetta --agree-to-license

# Oh My Zsh (https://github.com/ohmyzsh/ohmyzsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# --- Package Managers ---

# Homebrew (https://github.com/Homebrew/brew)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
