#!/bin/bash

# Dotfiles Installation Script for macOS
# Usage: curl -fsSL https://raw.githubusercontent.com/andrewgould27/dotfiles/master/install.sh | bash

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Helper functions
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if running on macOS
if [[ "$OSTYPE" != "darwin"* ]]; then
    log_error "This script is designed for macOS only."
    exit 1
fi

log_info "Starting dotfiles installation for macOS..."

# Create directories
log_info "Creating necessary directories..."
mkdir -p ~/.config/nvim
mkdir -p ~/.local/bin

# Clone dotfiles repository if not already present
DOTFILES_DIR="$HOME/.dotfiles"
if [ ! -d "$DOTFILES_DIR" ]; then
    log_info "Cloning dotfiles repository..."
    git clone https://github.com/andrewgould27/dotfiles.git "$DOTFILES_DIR"
else
    log_info "Dotfiles repository already exists. Pulling latest changes..."
    cd "$DOTFILES_DIR" && git pull
fi

cd "$DOTFILES_DIR"

# Make all scripts executable
chmod +x scripts/*.sh
chmod +x install.sh

# Run installation scripts
log_info "Installing Homebrew and applications..."
./scripts/install_homebrew.sh
./scripts/install_apps.sh

log_info "Setting up Zsh..."
./scripts/setup_zsh.sh

log_info "Setting up Neovim..."
./scripts/setup_nvim.sh

log_info "Setting up tmux..."
./scripts/setup_tmux.sh

log_info "Setting up terminal..."
./scripts/setup_terminal.sh

log_success "Dotfiles installation complete!"
log_info "Please restart your terminal or run 'source ~/.zshrc' to apply changes."
log_info "You may need to manually import terminal settings from terminal/settings.json"

# Optional: Set Zsh as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
    log_info "Setting Zsh as default shell..."
    chsh -s $(which zsh)
    log_success "Default shell changed to Zsh. Please restart your terminal."
fi
