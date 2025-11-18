#!/usr/bin/env bash
set -euo pipefail

echo "Installing basic tools..."

if [ -f /etc/debian_version ]; then
  sudo apt update
  sudo apt install -y rsync cron jq mailutils
elif [ -f /etc/redhat-release ]; then
  sudo yum install -y rsync cronie jq mailx
else
  echo "Unknown Linux distro. Please install manually."
fi

echo "✅ All dependencies installed!"
