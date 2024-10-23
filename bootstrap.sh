# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/lawrenceaiello/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/lawrenceaiello/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Nerd Fonts
brew tap aws/tap
brew install --cask font-droid-sans-mono-nerd-font

brew install mvn pkg-config hunspell php composer node nvm prettier wget zsh-autosuggestions zsh-syntax-highlighting ripgrep tfenv hashicorp/tap/terraform-ls tflint python3 pipx poetry postgresql gcc nvr awscli jq yarn rain aws-sam-cli go pre-commit terraform-lsp eksctl derailed/k9s/k9s kubectx stern kube-ps1 act gh k9s helm minamijoyo/hcledit/hcledit terraform-docs checkov terrascan tfsec trivy fzf

git config --global --add --bool push.autoSetupRemote true
git config --global user.name aiell0
git config --global user.email lawrence.aiello@laiello.com

# Install Rust
curl https://sh.rustup.rs -sSf | sh
c

go install golang.org/x/tools/gopls@latest

# https://github.com/bonnefoa/kubectl-fzf
go install github.com/bonnefoa/kubectl-fzf/v3/cmd/kubectl-fzf-completion@main
go install github.com/bonnefoa/kubectl-fzf/v3/cmd/kubectl-fzf-server@main

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://raw.githubusercontent.com/ahmetb/kubectl-aliases/master/.kubectl_aliases
mv .kubectl_aliases $HOME

# MacOS settings for key repeats when holding
defaults write -g ApplePressAndHoldEnabled -bool false
