# sys-snapshots v1.0

**Initial Release – Basic Process Snapshot Tool**

---

## 📦 Features
- Capture a snapshot of all running processes using `ps aux`.
- Save snapshots in `snapshots/` with a timestamped filename.
- Compare manually between snapshots with `diff`.

---

## 🔧 Usage

```bash
chmod +x sys-snapshot.sh
./sys-snapshot.sh
```

This will save a file like:

```
snapshots/snapshot-20250915-120500.txt
```

---

## 📝 Notes
- v1.0 does not include diff automation, user filtering, or side-by-side comparison.
- Serves as a stable, minimal baseline for system monitoring.
