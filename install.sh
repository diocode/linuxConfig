#!/usr/bin/env bash

# install.sh — Fedora System Reinstaller Script

set -e

echo "🔧 Updating system..."
sudo dnf update -y

echo "📦 Installing DNF packages from fedora-packages.txt..."
if [[ -f fedora-packages.txt ]]; then
    sudo dnf install -y $(< fedora-packages.txt)
else
    echo "⚠️ fedora-packages.txt not found!"
fi

echo "📦 Ensuring Flatpak is installed..."
sudo dnf install -y flatpak

echo "🌐 Adding Flathub remote if not already added..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "📦 Installing Flatpak apps from flatpak-apps.txt..."
if [[ -f flatpak-apps.txt ]]; then
    while IFS= read -r app; do
        [[ "$app" =~ ^#.*$ || -z "$app" ]] && continue  # Skip comments and empty lines
        echo "📦 Installing $app..."
        flatpak install -y flathub "$app"
    done < flatpak-apps.txt
else
    echo "⚠️ flatpak-apps.txt not found!"
fi

echo "✅ Fedora system setup complete!"

