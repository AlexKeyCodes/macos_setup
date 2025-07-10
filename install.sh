#!/bin/bash
set -e

echo "Starting macOS development setup..."
echo "======================================"

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH
echo "Adding Homebrew to PATH..."
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install chruby and ruby-install
echo "Installing chruby and ruby-install..."
brew install chruby ruby-install

# Add chruby to shell profile
echo "Configuring chruby..."
echo 'source /opt/homebrew/share/chruby/chruby.sh' >>~/.zshrc
echo 'source /opt/homebrew/share/chruby/auto.sh' >>~/.zshrc

# Install latest Ruby
echo "Installing latest Ruby..."
ruby-install ruby

# Install nvm
echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Source nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Install latest LTS Node
echo "Installing latest LTS Node..."
nvm install --lts
nvm use --lts

# Install browsers
echo "Installing browsers..."
brew install --cask firefox
brew install --cask chromium

# Install additional tools
echo "Installing additional tools..."
brew install --cask appcleaner
brew install --cask rectangle
brew install --cask slack
brew install btop
brew install yarn
brew install mysql
brew install postgresql@14
brew install ripgrep
npm install -g @anthropic-ai/claude-code

# Start database services
echo "Starting database services..."
brew services start mysql
brew services start postgresql@14

# Install Git
echo "Installing Git..."
brew install git

# Configure Git
echo "Configuring Git..."
git config --global user.name "name"
git config --global user.email "name@email.com"
git config --global init.defaultBranch main

# Generate SSH key
echo "Generating SSH key..."
ssh-keygen -t ed25519 -C "alex@alex.com" -f ~/.ssh/id_ed25519 -N ""

# Start SSH agent and add key
echo "Adding SSH key to agent..."
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Copy public key to clipboard
echo "Copying public key to clipboard..."
pbcopy <~/.ssh/id_ed25519.pub

echo ""
echo "======================================"
echo "Setup complete!"
echo "======================================"
echo ""
echo "Your SSH public key has been copied to the clipboard."
echo "You can now add it to your Git services (GitHub, GitLab, etc.)"
echo ""
echo "Please restart your terminal or run 'source ~/.zshrc' to use the new tools."
echo ""
echo "Installed tools:"
echo "- Homebrew package manager"
echo "- Ruby (via chruby/ruby-install)"
echo "- Node.js (via nvm)"
echo "- Firefox and Chromium browsers"
echo "- Development tools: Git, btop, yarn"
echo "- Productivity apps: Rectangle, AppCleaner, Slack"
echo "- Databases: MySQL, PostgreSQL"
echo "-------------------------------------"
echo "Next Steps: "
echo "Setup terminal - visit https://github.com/AlexKeyCodes/terminal and follow setup instructions. Dont forget to switch to macos branch!"
echo "Setup neovim - visit https://github.com/AlexKeyCodes/neovim and follow setup instructions"
