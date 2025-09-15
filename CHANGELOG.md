# Changelog

## v2.0 – 2025-09-15
### Added
- `--user` flag: filter snapshot to current user processes only.
- `--side-by-side` flag: aligned comparison view.
- Automatic colorized diff if `colordiff` is installed.

### Changed
- Snapshots now named with full timestamp (`YYYYMMDD-HHMMSS`).
- Default diff uses unified format (`diff -u`).

### Fixed
- Safer error handling if no previous snapshot exists.

---

## v1.0 – Initial Release
- Basic process snapshotting using `ps aux`.
