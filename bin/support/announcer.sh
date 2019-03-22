#!/bin/bash

first_module=true

announce() {
  echo -e " ┣━ $1"
}

separate() {
  echo " ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}

announce_module() {
  if [ "$first_module" = false ]; then
    separate
  fi
  first_module=false
  echo -e "\n ┏ ${BLUE}Module${RESET}: $1"
  echo " ┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
}
