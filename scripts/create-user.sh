#!/usr/bin/env bash
set -euo pipefail

USERNAME="${1:-}"
if [[ -z "$USERNAME" ]]; then
  echo "Usage: $0 <username>"
  exit 1
fi

if id "$USERNAME" &>/dev/null; then
  echo "User $USERNAME already exists ✅"
else
  sudo useradd -m "$USERNAME"
  echo "Created user $USERNAME 🎉"
fi
