#! /usr/bin/bash

#
# Deprecated, not using it any more.
#

app="alacritty"
session='godot'

if ! pgrep -x "$app" >/dev/null; then
  if ! tmux has-session -t $session; then
    $app -e tmux new -s $session "nvim --server $HOME/gameProject/.nvimPlug/nvimgodot $1"
  else
    $app -e tmux attach -t $session \; new-window "nvim $1 --listen $HOME/gameProject/.nvimPlug/nvimgodot"
  fi
else
  tmux new-window -t $session "nvim $1"
fi
