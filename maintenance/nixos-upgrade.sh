#!/usr/bin/env bash

echo "🔵 Updating Nix channels..."
sudo nixos-rebuild switch --upgrade

echo "🟢 Cleaning old generations..."
sudo nix-collect-garbage -d

echo "🔄 Optional: restart ? (y/n)"
read answer

if [ "$answer" = "y" ]; then
    echo "🔁 reboot..."
    sudo reboot
else
    echo "✔️ Upgrade abgeschlossen, ohne Neustart."
fi
