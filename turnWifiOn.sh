#!/usr/bin/env bash

# nmcli radio wifi on

if ping -c 1 archlinux.org &>/dev/null; then
  nmcli radio wifi off
  echo "wifi turn off"
else
  nmcli radio wifi on
  echo "wifi turn on"
fi
