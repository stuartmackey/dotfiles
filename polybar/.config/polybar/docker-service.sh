#!/bin/sh

COMMAND=$(systemctl is-active docker.service)

if [ "${COMMAND}" = "active" ]; then
  echo "[Docker:Running]"
else
  echo "[Docker:Inactive]"
fi
