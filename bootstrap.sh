# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Nerd Fonts
brew tap homebrew/cask-fonts
brew tap aws/tap
brew install --cask font-droid-sans-mono-nerd-font

brew install mvn pkg-config julia luarocks hunspell php composer vale node nvm prettier wget zsh-autosuggestions zsh-syntax-highlighting ripgrep lazygit tfenv hashicorp/tap/terraform-ls tflint python3 pipx poetry postgresql gcc nvr awscli jq yarn rain aws-sam-cli go pre-commit terraform-lsp meld eksctl derailed/k9s/k9s kubectx stern kube-ps1

# Install Rust
curl https://sh.rustup.rs -sSf | sh
c
mkdir ~/.nvm

sudo npm install -g typescript typescript-language-server

go install golang.org/x/tools/gopls@latest

# https://github.com/bonnefoa/kubectl-fzf
go install github.com/bonnefoa/kubectl-fzf/v3/cmd/kubectl-fzf-completion@main
go install github.com/bonnefoa/kubectl-fzf/v3/cmd/kubectl-fzf-server@main

# Install Nvchad
# mkdir ~/.config/nvim
# mkdir ~/.cache/nvim

# backup
# mkdir ~/backup_nvim
# cp -r ~/.config/nvim ~/backup_nvim
# cp -r ~/.local/share/nvim ~/backup_nvim
# cp -r ~/.cache/nvim ~/backup_nvim

# delete all previous
# rm -rf ~/.config/nvim
# rm -rf ~/.local/share/nvim
# rm -rf ~/.cache/nvim

# git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

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
