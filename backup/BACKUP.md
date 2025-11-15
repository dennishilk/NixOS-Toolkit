# 🔐 NixOS Toolkit – Backup Documentation


## 🇬🇧 English
The backup script `nixos-backup.sh` creates encrypted system backups.


### Backup Includes
- `/etc/nixos`
- `$HOME/.config`
- Additional files defined in the script


### Encryption
All backups are compressed and encrypted using:
- AES-256
- Password prompt with confirmation

### Output
Creates encrypted file, e.g.: backup-2025-11-14.tar.gz.aes

---


## 🇩🇪 Deutsch
Das Backup-Skript `nixos-backup.sh` erstellt verschlüsselte System-Backups.


### Enthaltene Daten
- `/etc/nixos`
- `$HOME/.config`
- Weitere definierte Dateien


### Verschlüsselung
Alle Backups werden komprimiert und AES-256-verschlüsselt.

### Ausgabe
Beispiel: backup-2025-11-14.tar.gz.aes

