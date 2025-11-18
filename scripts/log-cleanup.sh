#!/usr/bin/env bash
set -euo pipefail

DAYS="${1:-7}"
echo "🧹 Cleaning log files older than $DAYS days..."
sudo find /var/log -type f -name "*.log" -mtime +$DAYS -delete
echo "✅ Log cleanup done!"
