#!/usr/bin/env bash

# nmcli radio wifi on

# if ping -c 1 archlinux.org &>/dev/null; then
#   nmcli radio wifi off
# else
#   nmcli radio wifi on
# fi

if nmcli -t -f active,ssid, dev wifi | grep -q '^yes'; then
  nmcli radio wifi off
else
  nmcli radio wifi on
fi
