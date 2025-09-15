#!/usr/bin/env bash
# sys-snapshot v2.0 - with user filter & side-by-side diff

SNAPSHOT_DIR="snapshots"
mkdir -p "$SNAPSHOT_DIR"
OUTFILE="$SNAPSHOT_DIR/snapshot-$(date +%Y%m%d-%H%M%S).txt"

# Flags
SIDE_BY_SIDE=false
USER_ONLY=false

for arg in "$@"; do
  case $arg in
    --side-by-side) SIDE_BY_SIDE=true ;;
    --user) USER_ONLY=true ;;
  esac
done

if $USER_ONLY; then
  ps -u "$USER" > "$OUTFILE"
else
  ps aux > "$OUTFILE"
fi

echo "[+] Snapshot saved to $OUTFILE"

# Compare with last snapshot if exists
LAST=$(ls -t $SNAPSHOT_DIR/snapshot-*.txt 2>/dev/null | sed -n 2p || true)
if [ -n "$LAST" ]; then
  echo "[*] Comparing with $LAST"
  if $SIDE_BY_SIDE; then
    diff -y "$LAST" "$OUTFILE" | less
  else
    diff -u "$LAST" "$OUTFILE" | less
  fi
else
  echo "[!] No previous snapshot to compare."
fi
