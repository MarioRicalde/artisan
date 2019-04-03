#!/bin/bash

if [ -n "$TMUX" ]; then
  echo "This command cannot be run from wtihin TMUX."
  exit
fi
