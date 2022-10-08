# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Nerd Fonts
brew tap homebrew/cask-fonts
brew install --cask font-droid-sans-mono-nerd-font

# omzsh plugins
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
