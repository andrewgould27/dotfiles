# ~/.zshrc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    brew
    macos
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Export environment variables
export EDITOR=nvim
export VISUAL=nvim

# Aliases
alias vim='nvim'
alias vi='nvim'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline'
alias gd='git diff'
alias gb='git branch'
alias gco='git checkout'

# tmux aliases
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux list-sessions'
alias ts='tmux new-session -s'

# Directory shortcuts
alias dev='cd ~/Developer'
alias dl='cd ~/Downloads'
alias docs='cd ~/Documents'

# Homebrew PATH (for Apple Silicon Macs)
if [[ $(uname -m) == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Add local bin to PATH
export PATH="$HOME/.local/bin:$PATH"

# Node.js PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# Python PATH
export PATH="$HOME/Library/Python/3.11/bin:$PATH"

# History settings
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt SHARE_HISTORY

# Auto-completion settings
autoload -Uz compinit
compinit

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
