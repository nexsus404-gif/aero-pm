# Aero 📦

[![Platform: macOS](https://shields.io)](https://apple.com)
[![License: MIT](https://shields.io)](LICENSE)
[![Registry Status](https://shields.io)](https://github.io)

**Aero** is a modern, blazing-fast, and zero-compile package manager engineered specifically for **macOS (Intel architecture)**. It delivers pre-compiled binaries instantly, skipping heavy compilation stages entirely.

---

## 🚀 Installation

Install Aero with a single command directly into your terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/nexsus404-gif/aero/main/install.sh | bash
```

---

## 💻 Usage & Commands

Aero provides a clean, intuitive CLI interface. Manage your software with these standard commands:

```bash
aero install <package>    # Install a package
aero uninstall <package>  # Remove a package
aero update [package]     # Update one or all packages
aero list                 # List all installed packages
aero search <query>       # Search available packages in registry
aero info <package>       # Show detailed package metadata
```

---

## ⚙️ How It Works (Under the Hood)

Aero splits package metadata management and file distribution into a decentralized static architecture for maximum performance and security:

* **CDN-Driven Metadata:** Manifests are served globally via [GitHub Pages](https://github.io), bypassing strict API rate limits.
* **Storage Optimization:** Heavy compiled binaries are stored directly in high-speed GitHub Releases.
* **Cryptographic Safety:** Strict **SHA-256** integrity verification runs before extracting any software package.
* **Atomic Links:** Installs are atomic and isolated inside `/opt/aero/store/` with instant symlinking to your active environment paths.

---

<p align="center">
  <i>Aero Package Manager • Lightweight, Secure, and Built for Speed.</i>
</p>
