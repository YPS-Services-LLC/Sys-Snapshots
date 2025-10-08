<h1 align="center">🧠 Sys-Snapshots v2.0 — YPS Services LLC</h1>
<p align="center">
  <b>YPS Services LLC — B20250292295</b><br>
  AUS: +61 3 8907 8593 | USA: +1 (213) 528-8185<br>
  ✉ <a href="mailto:contact@yps.services">contact@yps.services</a><br>
  <a href="https://github.com/YPS-Services-LLC/Sys-Snapshots">github.com/YPS-Services-LLC/Sys-Snapshots</a>
</p>
<p align="center">
  <img src="assets/watermark-505953-angled.svg" width="120" height="80"><br>
  <img src="https://img.shields.io/badge/version-v2.0-blue?style=for-the-badge">
  <img src="https://img.shields.io/badge/platform-Fedora%20%7C%20Ubuntu-green?style=for-the-badge" alt="platform badge">
  <img src="https://img.shields.io/badge/status-Stable-orange?style=for-the-badge">
</p>

## Overview
**Sys‑Snapshots** captures a baseline of key system state (services, ports, critical configs) and provides **fast comparisons** to detect drift or suspicious changes. Designed to feed findings into **Opsec Hardener**’s interactive workflow.

## Features
- 🔎 Baseline capture & diff (hash‑based, cached for speed)
- 📄 JSON or table reports
- 🕒 Cron‑friendly (non‑interactive) and CLI prompts (interactive)
- 🔗 Integration hooks for Opsec Hardener & Password‑MGR

## What’s new in v2.0
- Baseline engine rewritten for incremental hashing
- `--report json` for machine‑readable pipelines
- Cleaner output and exit codes for automation

## Install
```bash
# Fedora 42+
sudo dnf install -y python3-psutil
# Ubuntu 24.04+
sudo apt install -y python3-psutil

git clone https://github.com/YPS-Services-LLC/Sys-Snapshots.git
cd Sys-Snapshots
```

## Usage
```bash
[yps@localhost]$ sys-snapshots --baseline create
[yps@localhost]$ sys-snapshots --compare
[yps@localhost]$ sys-snapshots --report table
[yps@localhost]$ sys-snapshots --report json > report.json
```

### Example (table)
```text
Δ TYPE      ITEM              STATUS
+ service   nginx.service     NEW
~ file      /etc/resolv.conf CHANGED
- service   cups.service     REMOVED
```

### Example (json)
```json
{
  "new": ["nginx.service"],
  "changed": ["resolv.conf"],
  "removed": ["cups.service"]
}
```

## Integration
- **Opsec Hardener v3.1**: Uses the baseline as ground truth; interactive suggestions to stop/keep processes.
- **Password‑MGR**: Monitor vault file attributes in the baseline for unexpected changes.

## Troubleshooting
- Ensure consistent run context (root vs user) or paths may differ.
- For noisy systems, expand ignore lists in the config directory `~/.yps/sys-snapshots/`.

## License
MIT License · © 2025 YPS Services LLC

<hr>
<p align="center">
  <sub>© 2025 YPS Services LLC — B20250292295 · All Rights Reserved</sub><br>
  <sub>
    <a href="https://github.com/YPS-Services-LLC/OPSEC-Hardener">⚙️ Opsec Hardener v3.1</a> ·
    <a href="https://github.com/YPS-Services-LLC/Sys-Snapshots">🧠 Sys-Snapshots v2.0</a> ·
    <a href="https://github.com/YPS-Services-LLC/Password-MGR">🔐 Password-MGR v2.1</a>
  </sub>
</p>
