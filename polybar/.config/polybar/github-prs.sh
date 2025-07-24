#!/bin/sh

URL=""
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/reddituser"

# notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')
prs=$(gh search prs --state=open --review-requested=@me --json repository --jq length)

if [ -n "$prs" ] && [ "$prs" -gt 0 ]; then
  echo "[:$prs]"
else
  echo ""
fi
