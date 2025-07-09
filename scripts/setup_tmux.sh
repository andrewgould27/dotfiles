#!/bin/bash

echo "Setting up tmux..."

# Backup existing .tmux.conf if it exists
if [ -f "$HOME/.tmux.conf" ]; then
    echo "Backing up existing .tmux.conf to .tmux.conf.backup"
    cp "$HOME/.tmux.conf" "$HOME/.tmux.conf.backup"
fi

# Copy our tmux config
echo "Installing tmux configuration..."
cp tmux/.tmux.conf "$HOME/.tmux.conf"

echo "tmux setup complete!"
