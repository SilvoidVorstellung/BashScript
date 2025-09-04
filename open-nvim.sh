#! /usr/bin/bash

echo "Opening file: $1"

app="alacritty"
session='godot'

if ! pgrep -x "$app" >/dev/null; then
  if ! tmux has-session -t $session; then
    $app -e tmux new -s $session "nvim $1"
  else
    echo "Attach to godot session"
    $app -e tmux attach -t $session \; new-window "nvim $1"
  fi
else
  tmux new-window -t $session "nvim $1"
fi
