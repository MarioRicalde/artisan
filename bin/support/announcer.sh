#!/bin/bash

first_module=true
announcer_disabled=false

announce() {
  if [ "$announcer_disabled" = false ]; then
    echo -e " ├─> $@"
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

announce_file_contents() {
  echo -e "\n$1 contents:\n${RED}"
  cat $1
  echo -e "${RESET}"
}
