# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Nerd Fonts
brew tap homebrew/cask-fonts
brew install --cask font-droid-sans-mono-nerd-font

# omzsh plugins
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# Terraform
brew install tfenv
tfenv install 1.3.2
tfenv use 1.3.2

# Language Servers
brew install hashicorp/tap/terraform-ls
brew install tflint
