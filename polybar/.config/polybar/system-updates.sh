#!/bin/sh

pending_updates=$(checkupdates | wc -l)

if [ "$pending_updates" -gt 0 ]; then
  echo "[:$pending_updates]"
else
  echo ""
fi
