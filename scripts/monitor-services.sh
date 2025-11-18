#!/usr/bin/env bash
SERVICES="sshd cron"

for s in $SERVICES; do
  if systemctl is-active --quiet $s; then
    echo "$s is running ✅"
  else
    echo "$s is down ❌"
  fi
done
