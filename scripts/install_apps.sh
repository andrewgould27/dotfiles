#!/bin/bash

echo "Installing applications via Homebrew..."

# CLI tools
brew_packages=(
    "git"
    "curl"
    "wget"
    "zsh"
    "tmux"
    "neovim"
    "ripgrep"      # for telescope live grep
    "fd"           # better find
    "tree"         # directory tree view
    "htop"         # better top
    "jq"           # JSON processor
    "node"         # for LSP servers
    "python"       # for Python development
    "go"           # for Go development
    "rust"         # for Rust development
)

# GUI applications
cask_packages=(
    "iTerm2"           # Better terminal
    "visual-studio-code"
    "firefox"
    "spotify"
    "discord"
    "rectangle"        # Window management
    "alt-tab"         # Better app switching
)

# Install CLI tools
echo "Installing CLI tools..."
for package in "${brew_packages[@]}"; do
    if brew list "$package" &>/dev/null; then
        echo "$package is already installed"
    else
        echo "Installing $package..."
        brew install "$package"
    fi
done

# Install GUI applications
echo "Installing GUI applications..."
for package in "${cask_packages[@]}"; do
    if brew list --cask "$package" &>/dev/null; then
        echo "$package is already installed"
    else
        echo "Installing $package..."
        brew install --cask "$package"
    fi
done

# Install fonts
echo "Installing fonts..."
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font

echo "Applications installation complete!"
