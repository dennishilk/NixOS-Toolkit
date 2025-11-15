# ❄️ NixOS-Toolkit

**English + Deutsch – Complete Toolkit Repository**

---

# 🚀 Overview / Überblick

**NixOS-Toolkit** is a collection of powerful shell tools for maintaining, backing up, restoring, and securing NixOS systems.

This repository contains **four standalone tools**, perfectly organized but grouped into one professional toolkit:

* `nixos-maintain.sh` – System maintenance
* `nixos-backup.sh` – Encrypted system backups
* `nixos-restore.sh` – Restore encrypted backups
* `pin-system.sh` – Pin & protect stable generations

Designed and maintained by **Dennis Hilk**.

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
git clone https://github.com/<youruser>/NixOS-Toolkit.git
cd NixOS-Toolkit
chmod +x **/*.sh
```

### 🇩🇪 Deutsch

```
git clone https://github.com/<deinuser>/NixOS-Toolkit.git
cd NixOS-Toolkit
chmod +x **/*.sh
```

---

# 📘 Documentation / Dokumentation

Available in the `docs/` directory.



