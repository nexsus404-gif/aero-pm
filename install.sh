#!/bin/bash
set -euo pipefail

AERO_ROOT="/opt/aero"
AERO_BIN="$AERO_ROOT/bin"
AERO_STORE="$AERO_ROOT/store"
AERO_URL="https://github.com/nexsus404-gif/aero-pm/releases/download/v0.1.0/aero-v0.1.0-macos-x86_64.tar.gz"

echo "🚀 Installing Aero Package Manager..."

echo "🔐 Aero needs administrator privileges to create directories in /opt."
echo "Please enter your Mac password below:"

sudo mkdir -p "$AERO_BIN"
sudo mkdir -p "$AERO_STORE"

TMP_DIR=$(mktemp -d)
echo "📥 Downloading core components..."
curl -fsSL "$AERO_URL" -o "$TMP_DIR/aero.tar.gz"

echo "📦 Extracting assets..."
tar -xzf "$TMP_DIR/aero.tar.gz" -C "$TMP_DIR"

sudo mv "$TMP_DIR/aero" "$AERO_BIN/aero"
sudo chmod +x "$AERO_BIN/aero"

sudo chown -R "$USER" "$AERO_ROOT"

rm -rf "$TMP_DIR"

DETECTED_RC=""
if [[ "$SHELL" == *"zsh"* ]]; then
    DETECTED_RC="$HOME/.zshrc"
elif [[ "$SHELL" == *"bash"* ]]; then
    DETECTED_RC="$HOME/.bash_profile"
fi

if [ -n "$DETECTED_RC" ]; then
    if ! grep -q "$AERO_BIN" "$DETECTED_RC" 2>/dev/null; then
        echo "" >> "$DETECTED_RC"
        echo "# Added by Aero package manager" >> "$DETECTED_RC"
        echo "export PATH=\"$AERO_BIN:\$PATH\"" >> "$DETECTED_RC"
        echo "🔧 Added $AERO_BIN to $DETECTED_RC"
    fi
else
    echo "⚠️ Could not automatically detect shell configuration file. Please manually add $AERO_BIN to your PATH."
fi

echo "--------------------------------------------------"
echo "✅ Aero successfully installed!"
echo "👉 Run 'source $DETECTED_RC' or restart your Terminal to apply changes."
echo "   Try: aero install fastfetch"
echo "--------------------------------------------------"
