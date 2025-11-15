# ❄️ NixOS-Toolkit

![Toolkit](https://img.shields.io/badge/NixOS-Toolkit-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![AES256](https://img.shields.io/badge/Encryption-AES--256-red?style=for-the-badge)
![NixOS](https://img.shields.io/badge/OS-NixOS-blue?style=for-the-badge)


---

# 🚀 Overview / Überblick

**NixOS-Toolkit** is a collection of powerful shell tools for maintaining, backing up, restoring, and securing NixOS systems.

This repository contains **four standalone tools**, perfectly organized but grouped into one professional toolkit:

* `nixos-maintain.sh` – System maintenance
* `nixos-backup.sh` – Encrypted system backups
* `nixos-restore.sh` – Restore encrypted backups
* `pin-system.sh` – Pin & protect stable generations

Designed and maintained by **Dennis Hilk (Nebunix)**.

---

# 🏗️ Repository Structure / Repository-Struktur

```
NixOS-Toolkit/
├── maintenance/
│   └── nixos-maintain.sh
│
├── backup/
│   ├── nixos-backup.sh
│   ├── nixos-restore.sh
│   └── README.md
│
├── pin/
│   └── pin-system.sh
│
├── docs/
│   ├── MAINTENANCE.md
│   ├── BACKUP.md
│   ├── RESTORE.md
│   └── PINNING.md
│
├── examples/
│   ├── backup-example-output.txt
│   ├── restore-example.txt
│   └── maintain-output.txt
│
├── LICENSE
└── README.md
```

---

# 🧹 Tools

## 🧠 1. nixos-maintain.sh

### 🇬🇧 English

Automates system maintenance:

* Update channels
* System upgrade
* Remove old generations
* Garbage collection
* Optimize Nix store
* Journal cleanup
* Bootloader rebuild

### 🇩🇪 Deutsch

Automatisiert die Systempflege:

* Channels aktualisieren
* System upgraden
* Alte Generationen löschen
* Garbage Collection
* Nix Store optimieren
* Journal bereinigen
* Bootloader aktualisieren

---

## 🔐 2. nixos-backup.sh

### 🇬🇧 English

Create encrypted AES-256 backups including:

* `/etc/nixos`
* `$HOME/.config`
* Custom include paths

### 🇩🇪 Deutsch

Erstellt AES-256 verschlüsselte Backups von:

* `/etc/nixos`
* `$HOME/.config`
* Benutzerdefinierten Pfaden

---

## 📦 3. nixos-restore.sh

### 🇬🇧 English

* Restore encrypted backups
* Safety checks
* Dry-run support

### 🇩🇪 Deutsch

* Wiederherstellung verschlüsselter Backups
* Sicherheitsprüfungen
* Dry-Run Unterstützung

---

## 📌 4. pin-system.sh

### 🇬🇧 English

Safely pin system generations:

* Stable fallback
* Emergency rollback
* Pinned profile creation

### 🇩🇪 Deutsch

Sichert Systemgenerationen:

* Stabile Fallbacks
* Notfall-Rollbacks
* Pinned Profile

---

# ⚙️ Installation

### 🇬🇧 English

```
git clone https://github.com/dennishilk/NixOS-Toolkit.git
cd NixOS-Toolkit
chmod +x **/*.sh
```

### 🇩🇪 Deutsch

```
git clone https://github.com/dennishilk/NixOS-Toolkit.git
cd NixOS-Toolkit
chmod +x **/*.sh
```

---

# 📘 Documentation / Dokumentation

Available in the `docs/` directory.

---

# 📄 License (MIT)

MIT License

Copyright (c) 2025 Dennis Hilk

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
