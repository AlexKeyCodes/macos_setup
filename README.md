# macOS Development Setup

This is a quick and easy way to get setup on a new macos machine. This is for my own personal dev environment which is focused around Ruby on Rails.

I doubt anyone will actually use this, but if you do please read through the script before running it! Don't run random scripts from the internet :)

P.S. - This doesn't include terminal or text editor setup. Please see my [terminal repo](https://github.com/AlexKeyCodes/terminal) and [neovim repo](https://github.com/AlexKeyCodes/neovim)

## Quick Start

UPDATE THESE SETTINGS IN SCRIPT!
```bash
git config --global user.name "name"
git config --global user.email "name@email.com"
```

1. **Clone Repo**
   ```bash
   git clone git@github.com:AlexKeyCodes/macos_setup.git
   ```
2. **Make it executable:**
   ```bash
   chmod +x install.sh
   ```
3. **Run the script:**
   ```bash
   ./install.sh
   ```

## What Gets Installed

### Package Manager
- **Homebrew** - The missing package manager for macOS

### Programming Languages & Runtime Managers
- **Ruby** - Latest version via chruby and ruby-install
- **Node.js** - Latest LTS version via nvm (Node Version Manager)
- **Yarn** - Alternative package manager for Node.js

### Development Tools
- **Git** - Version control system
- **btop** - Modern system resource monitor
- **Claude Code** - AI-powered coding assistant (installed via npm)

### Databases
- **MySQL** - Popular relational database
- **PostgreSQL 14** - Advanced open-source relational database

### Web Browsers
- **Firefox** - Privacy-focused web browser
- **Chromium** - Open-source web browser

### Productivity Applications
- **Rectangle** - Window management tool
- **AppCleaner** - Uninstaller utility
- **Slack** - Team communication platform

## Post-Installation Steps

### 1. Restart Your Terminal
After installation, restart your terminal or run:
```bash
source ~/.zshrc
```

### 2. SSH Key Setup
Your SSH public key has been automatically copied to your clipboard. Add it to your Git services:

- **GitHub**: Settings → SSH and GPG keys → New SSH key
- **Servers**: Add ssh key to all your servers

### 3. Clone all your repos
- Tally Meals
- Austin City Guide
- Reservation Genie
- 88 Restaurants
- Gourmet Garlic Gardens
- Portfolio

### 4. Setup workspaces shortcuts
