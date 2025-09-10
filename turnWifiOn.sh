#!/usr/bin/env bash

# Script to toggle wifi on and off.
# Bind a shortcut to execute it.

if nmcli -t -f active,ssid, dev wifi | grep -q '^yes'; then
  nmcli radio wifi off
else
  nmcli radio wifi on
fi
