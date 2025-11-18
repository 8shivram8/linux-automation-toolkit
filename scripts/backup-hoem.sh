#!/usr/bin/env bash
set -euo pipefail

USERNAME="${1:-}"
if [[ -z "$USERNAME" ]]; then
  echo "Usage: $0 <username>"
  exit 1
fi

DEST="/var/backups"
sudo mkdir -p "$DEST"
sudo tar -czf "${DEST}/${USERNAME}_home_$(date +%F).tar.gz" "/home/${USERNAME}"
echo "✅ Backup complete! Saved to ${DEST}"
