# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Nerd Fonts
brew tap homebrew/cask-fonts
brew install --cask font-droid-sans-mono-nerd-font

brew install mvn
brew install pkg-config
brew install julia
brew install luarocks
brew install hunspell
brew install php
brew install composer
brew install vale

brew install node
brew install nvm
brew install prettier
brew install wget

curl https://sh.rustup.rs -sSf | sh
c
mkdir ~/.nvm

# omzsh plugins
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

brew install ripgrep
brew install lazygit

# Terraform
brew install tfenv
# tfenv install 1.3.2
# tfenv use 1.3.2

# Language Servers
brew install hashicorp/tap/terraform-ls
brew install tflint

# Python
brew install python3
brew install pipx
pipx install poetry

brew install postgresql
brew install gcc

# Neovim Remote
brew install nvr

sudo npm install -g typescript typescript-language-server

brew install awscli
brew install jq
brew install yarn
brew install rain
brew tap aws/tap
brew install aws-sam-cli

brew install go
go install golang.org/x/tools/gopls@latest

# Install Nvchad
mkdir ~/.config/nvim
mkdir ~/.cache/nvim

# backup
mkdir ~/backup_nvim
cp -r ~/.config/nvim ~/backup_nvim
cp -r ~/.local/share/nvim ~/backup_nvim
cp -r ~/.cache/nvim ~/backup_nvim

# delete all previous
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

# set up vale
cat << EOF > ~/.vale.ini
StylesPath = styles

MinAlertLevel = suggestion

Packages = RedHat, alex

[*]
BasedOnStyles = Vale, RedHat, alex
EOF

vale sync

git config --global user.name aiell0
git config --global user.email lawrence.aiello@laiello.com
