# ❄️ NixOS Toolkit – Maintenance Documentation


## 🇬🇧 English
The maintenance script `nixos-maintain.sh` performs a full, safe system upkeep routine.


### Features
- Update all Nix channels
- Upgrade system to latest versions
- Remove outdated generations
- Garbage collect unused store paths
- Optimize `/nix/store` via deduplication
- Clean systemd journals to reduce disk usage
- Refresh bootloader entries
 
### Notes
- Safe to run daily or weekly
- Uses `set -euo pipefail` for reliability
- Works on NixOS stable, unstable, and flakes setups


---


## 🇩🇪 Deutsch
Das Skript `nixos-maintain.sh` führt eine sichere, vollständige Systemwartung durch.


### Funktionen
- Aktualisiert alle Nix-Channels
- Upgradet das System
- Entfernt alte Systemgenerationen
- Führt Garbage Collection durch
- Optimiert den Nix Store
- Bereinigt systemd Journals
- Aktualisiert den Bootloader

### Hinweise
- Tägliche oder wöchentliche Nutzung empfohlen
- Sehr stabil dank `set -euo pipefail`
- Kompatibel mit Stable/Unstable/Flakes
