#!/bin/bash

echo "Setting up Neovim..."

# Create Neovim config directory
mkdir -p ~/.config/nvim

# Backup existing init.lua if it exists
if [ -f "$HOME/.config/nvim/init.lua" ]; then
    echo "Backing up existing init.lua to init.lua.backup"
    cp "$HOME/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua.backup"
fi

# Copy our Neovim config
echo "Installing Neovim configuration..."
cp nvim/init.lua "$HOME/.config/nvim/init.lua"

# Install Python support for Neovim
echo "Installing Python support for Neovim..."
python3 -m pip install --user --upgrade pynvim

# Install Node.js packages for LSP servers
echo "Installing Node.js packages for LSP servers..."
npm install -g typescript typescript-language-server

echo "Neovim setup complete!"
echo "Note: Plugins will be automatically installed when you first open Neovim"
