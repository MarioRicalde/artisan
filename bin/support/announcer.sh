#!/bin/bash

first_module=true
announcer_disabled=false

announce() {
  if [ "$announcer_disabled" = false ]; then
    echo -e " ├─> $1"
  fi
}

split() {
  echo " └───────────────────────────────────────────────────────────────────"
}

resume() {
  echo " ┌───────────────────────────────────────────────────────────────────"
}

separate() {
  if [ "$announcer_disabled" = false ]; then
    echo " └───────────────────────────────────────────────────────────────────"
  fi
}

announce_module() {
  if [ "$announcer_disabled" = false ]; then
    if [ "$first_module" = false ]; then
      separate
    fi
    first_module=false
    echo -e "\n ┌ ${BLUE}Module${RESET}: $1"
    echo " ├───────────────────────────────────────────────────────────────────"
  fi
}
