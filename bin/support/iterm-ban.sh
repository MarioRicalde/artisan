#!/bin/bash

if [ "$TERM_PROGRAM" = "iTerm.app" ]; then
  echo "Don't run this from iTerm, use Terminal.app!"
  echo ""
  echo "ABORT!"
  exit
fi
