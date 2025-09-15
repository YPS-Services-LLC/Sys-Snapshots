# sys-snapshots v2.0

**Enhanced Release – User Filtering, Side-by-Side Diff, Safer Snapshots**

---

## 🚀 New in v2.0
- `--user` flag → snapshot only your processes.
- `--side-by-side` flag → aligned process comparison (`diff -y`).
- Automatic colorized diff if `colordiff` is installed.
- Improved error handling (no crash if no previous snapshot exists).
- Snapshots named with full timestamp (`YYYYMMDD-HHMMSS`).

---

## 🔧 Usage

Take a full snapshot:

```bash
./sys-snapshot-yps.sh
```

Snapshot only your user:

```bash
./sys-snapshot-yps.sh --user
```

Compare side by side:

```bash
./sys-snapshot-yps.sh --side-by-side
```

---

## 📂 Example Output

```
[+] Snapshot saved to snapshots/snapshot-20250915-120500.txt
[*] Comparing with snapshots/snapshot-20250915-115800.txt
```

---

## 📝 Notes
- Requires basic Linux tools (`ps`, `diff`, `less`).  
- Optional: install `colordiff` for colorized diffs:
  ```bash
  sudo dnf install colordiff   # Fedora
  sudo apt install colordiff   # Debian/Ubuntu
  ```
