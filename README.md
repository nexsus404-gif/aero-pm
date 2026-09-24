# Aero

Fast, zero-compile package manager for macOS (Intel).

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/nexsus404-gif/aero/main/install.sh | bash
```
Usage
```bash
aero install <package>    # Install a package
aero uninstall <package>  # Remove a package
aero update [package]     # Update one or all packages
aero list                 # List installed packages
aero search <query>       # Search available packages
aero info <package>       # Show package details
```
How It Works
`
    Manifests served via GitHub Pages (no rate limits)
    Binaries stored in GitHub Releases
    SHA-256 integrity verification on every install
    Atomic installs to /opt/aero/store/ with symlinks

