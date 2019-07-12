#!/usr/local/bin/bash

# Add ZSH to shells, because macos
# echo /usr/local/bin/zsh | sudo tee -a /etc/shells

# Update Homebew
brew update

# Install ZSH
brew install zsh
chsh -s /usr/local/bin/zsh

echo "installing brew packages..."
packages=(
    ncdu
    htop
    lua
    vim
    wget
    kubernetes-helm
    p7zip
    unrar
    nvm
)

brew install ${packages[@]}

echo "installing casks..."
apps=(
    google-chrome
    firefox-developer-edition
    visual-studio-code
    discord
    gitkraken
    dotnet-sdk
    slack
    spotify
    webstorm
    rider
)
brew cask install ${apps[@]}