#!/bin/sh

pending_updates=$(checkupdates | wc -l)

if [ -n "$pending_updates" ] && [ "$pending_updates" -gt 0 ]; then
  echo "[:$pending_updates]"
else
  echo ""
fi
