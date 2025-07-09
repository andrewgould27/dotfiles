# My Dotfiles

A collection of my personal dotfiles for macOS, featuring a beautiful Nord-themed development environment.

## Features

- **Zsh** with Oh My Zsh and Powerlevel10k theme
- **Neovim** with LSP, syntax highlighting, fuzzy finding, and more
- **tmux** for terminal multiplexing
- **Nord theme** across all applications
- **Nerd Fonts** for beautiful icons and symbols

## Quick Installation

```bash
curl -fsSL https://raw.githubusercontent.com/andrewgould27/dotfiles/main/install.sh | bash
```

## Manual Installation

1. Clone this repository:
```bash
git clone https://github.com/andrewgould27/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Run the installation script:
```bash
./install.sh
```

## What Gets Installed

### Applications (via Homebrew)
- **Development Tools**: git, neovim, tmux, node, python, go, rust
- **CLI Utilities**: ripgrep, fd, tree, htop, jq
- **GUI Apps**: iTerm2, Visual Studio Code, Firefox, Spotify, Discord
- **Utilities**: Rectangle (window management), Alt-Tab (app switching)
- **Fonts**: JetBrains Mono Nerd Font, Fira Code Nerd Font

### Configurations
- **Zsh**: Oh My Zsh with Powerlevel10k theme and useful plugins
- **Neovim**: Modern setup with LSP, completion, fuzzy finding, and Nord theme
- **tmux**: Nord-themed configuration with sensible defaults
- **Terminal**: Nord theme for macOS Terminal and iTerm2

## Key Features

### Neovim
- **LSP Support**: Auto-completion, go-to-definition, error checking
- **Fuzzy Finding**: Quick file and text search with Telescope
- **File Explorer**: Beautiful file tree with Neo-tree
- **Git Integration**: See changes inline with GitSigns
- **Nord Theme**: Beautiful Arctic-inspired colors

#### Key Bindings
- `Space` - Leader key
- `Space + ff` - Find files
- `Space + fg` - Live grep (search in files)
- `Space + e` - Toggle file explorer
- `gd` - Go to definition
- `K` - Hover documentation
- `Space + ca` - Code actions

### Zsh
- **Powerlevel10k**: Beautiful and fast prompt
- **Syntax Highlighting**: Commands are highlighted as you type
- **Auto-suggestions**: Suggestions based on history
- **Git Integration**: Shows git status in prompt

### tmux
- **Nord Theme**: Consistent theming with other tools
- **Better Keybindings**: `Ctrl+a` prefix, intuitive split commands
- **Mouse Support**: Click to switch panes and resize
- **Vim-like Copy Mode**: Familiar key bindings for text selection

## Customization

### Neovim
- Configuration: `~/.config/nvim/init.lua`
- Add new plugins in the `require("lazy").setup({})` section
- LSP servers are managed by Mason (`:Mason` to open)

### Zsh
- Configuration: `~/.zshrc`
- Customize Powerlevel10k: `p10k configure`
- Add aliases and functions as needed

### tmux
- Configuration: `~/.tmux.conf`
- Reload config: `Ctrl+a` then `r`

## Manual Steps

Some things need to be done manually after installation:

1. **Terminal Theme**: Import `terminal/settings.json` in iTerm2 preferences
2. **Powerlevel10k**: Run `p10k configure` for first-time setup
3. **Neovim**: First launch will install all plugins automatically
4. **Font**: Make sure to select a Nerd Font in your terminal preferences

## Troubleshooting

### Command not found
If commands like `nvim` or `brew` are not found, restart your terminal or run:
```bash
source ~/.zshrc
```

### Neovim plugins not working
Delete the lazy plugin directory and restart Neovim:
```bash
rm -rf ~/.local/share/nvim
nvim
```

### Zsh theme not loading
Make sure Powerlevel10k is installed and run:
```bash
p10k configure
```

## Updating

To update your dotfiles:
```bash
cd ~/.dotfiles
git pull
./install.sh
```

## Contributing

Feel free to fork this repository and customize it for your own needs!

## License

This project is licensed under the MIT License - see the LICENSE file for details.
