#!/usr/bin/env bash
# sys-snapshot v1.0 - basic snapshot

SNAPSHOT_DIR="snapshots"
mkdir -p "$SNAPSHOT_DIR"
OUTFILE="$SNAPSHOT_DIR/snapshot-$(date +%Y%m%d-%H%M%S).txt"

ps aux > "$OUTFILE"
echo "[+] Snapshot saved to $OUTFILE"
