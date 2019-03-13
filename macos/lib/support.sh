#!/bin/bash

RESET='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[01;34m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'

VISUAL_MODE='false'

mkdir -p backup;

while getopts 'abf:v' flag; do
  case "${flag}" in
    v|--visual) VISUAL_MODE='true' ;;
  esac
done

announce() {
  echo -e " [   + Ａ ]  $1"
}

announce_module() {
  echo -e "\n\n [   + Ａ ]  Installing Package: $1"
  echo "───────────────────────────────────────────────────────"
}

visual_mode?() {
  if [[ "$VISUAL_MODE" == "true" ]]; then
    sleep 0.30
  fi
}

backup_and_write() {
  DOMAIN="$1"
  KEY="$2"
  VALUE_TYPE="$3"
  NEW_VALUE="$4"
  ORIGINAL_VALUE=$(defaults read $DOMAIN $KEY 2>&1)
  SANITIZED_FILE_NAME=$( echo "$DOMAIN $KEY" | sed -e "s/[^A-Za-z0-9]/-/g" )
  visual_mode?

  if [[ $ORIGINAL_VALUE == *"does not exist"* ]]; then
    ORIGINAL_VALUE="NONE"
    echo -e -n " [ ${YELLOW}NEW${RESET} ]  "
  else
    echo -e -n " [ ${GREEN}UPDATE${RESET} ]  "
  fi

  echo "defaults write $DOMAIN $KEY $VALUE_TYPE $NEW_VALUE"

  BACKUP_FILE_CONTENT="#!/bin/bash\nDOMAIN=\"$DOMAIN\";\nKEY=\"$KEY\";\nVALUE_TYPE=\"$VALUE_TYPE\";\nVALUE=\"$ORIGINAL_VALUE\";"
  echo -e "$BACKUP_FILE_CONTENT" > backup/${SANITIZED_FILE_NAME}
}

clear_backup() {
  rm backup/* 2> /dev/null
}

restore() {
  announce_module "ARTISAN BACKUP RESET"
  for file in backup/*; do
    visual_mode?
    source $file

    if [[ $VALUE == "NONE" ]]; then
      announce " [ ${RED}DELETE${RESET} ] Value was not set before ARTISAN."
      echo "defaults delete $DOMAIN $KEY"
    else
      announce  " [ ${GREEN}RESTORE${RESET} ] Value was set before ARTISAN."
      echo "defaults write $DOMAIN $KEY $VALUE_TYPE $VALUE"
    fi
    echo ""
  done
}
