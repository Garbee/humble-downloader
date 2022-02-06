#!/bin/bash

if [[ -z "$COOKIE" ]]; then
  echo "A cookie must be supplied through the \$COOKIE environment variable"
  exit 1
fi

hbd -l /opt/downloads -s "$COOKIE" --progress
