# macOS Development Setup

A comprehensive setup script for macOS development environments. This script automates the installation and configuration of essential development tools, programming languages, and productivity applications.

## Quick Start

## Git Configuration

UPDATE THESE SETTINGS IN SCRIPT!
```bash
git config --global user.name "name"
git config --global user.email "name@email.com"
```

1. **Download the script** (save as `setup_macos_dev.sh`)
2. **Make it executable:**
   ```bash
   chmod +x setup_macos_dev.sh
   ```
3. **Run the script:**
   ```bash
   ./setup_macos_dev.sh
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
- **GitLab**: User Settings → SSH Keys → Add SSH key
- **Bitbucket**: Personal settings → SSH keys → Add key

### 3. Install Claude Code
The script includes npm installation of Claude Code:
```bash
npm install -g @anthropic-ai/claude-code
```

You can then use Claude Code from your terminal:
```bash
claude-code
```

### 4. Database Configuration
Both MySQL and PostgreSQL are installed and started automatically. Default connection details:

**MySQL:**
- Host: `localhost`
- Port: `3306`
- User: `root`
- Password: (none initially)

**PostgreSQL:**
- Host: `localhost`
- Port: `5432`
- User: Your system username
- Database: Your system username

## Ruby Management

Ruby is managed via chruby. To use different Ruby versions:

```bash
# Install a specific Ruby version
ruby-install ruby 3.2.0

# Switch to a Ruby version
chruby 3.2.0

# Set default Ruby version
echo "ruby-3.2.0" > ~/.ruby-version
```

## Node.js Management

Node.js is managed via nvm:

```bash
# Install latest LTS Node.js
nvm install --lts

# Install specific Node.js version
nvm install 18.17.0

# Switch Node.js versions
nvm use 18.17.0

# Set default Node.js version
nvm alias default 18.17.0
```

## Troubleshooting

### Permission Issues
If you encounter permission errors:
```bash
sudo chown -R $(whoami) /opt/homebrew
```

### PATH Issues
If commands aren't found, ensure your PATH is configured:
```bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile
```

### Database Connection Issues
To restart database services:
```bash
brew services restart mysql
brew services restart postgresql@14
```

## Customization

You can modify the script to add or remove tools based on your needs. The script is organized into clear sections for easy customization.

## System Requirements

- macOS 10.15 (Catalina) or later
- Internet connection for downloading packages
- Administrator privileges for some installations

## Support

For issues with specific tools, refer to their official documentation:
- [Homebrew](https://brew.sh/)
- [nvm](https://github.com/nvm-sh/nvm)
- [chruby](https://github.com/postmodern/chruby)
- [Claude Code](https://github.com/anthropics/claude-code)
