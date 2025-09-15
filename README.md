# sys-snapshots

[![Latest Release](https://img.shields.io/github/v/release/YPS-Services-LLC/SYS-SNAPSHOTS)](https://github.com/YPS-Services-LLC/SYS-SNAPSHOTS/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**System Snapshot & Diff Tool for Linux**  
Capture and compare running processes across time.  
Designed for developers, sysadmins, and anyone wanting to track system state changes in a lightweight way.

---

## 🚀 Features

- Take snapshots of all running processes (`ps aux`).
- Store snapshots with timestamped filenames.
- Compare current vs. previous snapshots to see what changed.

### 🔄 Version Highlights
- **[v2.0 (latest)](versions/v2.0/README.md)**  
  User filtering, side-by-side diff, auto color support, safer error handling.  
- **[v1.0](versions/v1.0/README.md)**  
  Minimal baseline version with basic snapshotting only.

---

## 🔧 Installation

Clone the repo:

```bash
git clone https://github.com/YPS-Services-LLC/SYS-SNAPSHOTS.git
cd SYS-SNAPSHOTS
```

Make the script executable:

```bash
chmod +x versions/v2.0/sys-snapshot-yps.sh
```

---

## 📝 Changelog

See [CHANGELOG.md](CHANGELOG.md) for full release history.
