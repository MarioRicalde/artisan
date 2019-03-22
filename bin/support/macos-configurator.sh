#!/bin/bash

resolve_backup_directory() {
  backup_path=$artisan_path/macos/backup/incremental
  targets=( $backup_path/* )                          # all dirs in an array
  backup_last_dir=${targets[@]: (-1):1}               # select path from last entry
  backup_last_dir=${backup_last_dir##*/}              # select filename
  backup_last_number=00$(( 10#$backup_last_dir + 1 )) # increment number (base 10), add leading zeros
  backup_dir=$backup_path/$backup_last_number

  if [ "$arg_backup_name" != "false" ]; then 
    backup_path=$artisan_path/macos/backup/named
    backup_dir=$backup_path/$arg_backup_name
  fi

  if [ "$subcommand" = "install" ]; then
    announce_module "Directory Resolver"
    announce "Storing backup in $backup_dir"
    if [ -d "$backup_dir" ]; then
      announce "${RED}$backup_dir already exists. Aborting. ${RESET}"
      separate
      exit 1
    else
      mkdir -p $backup_dir
    fi
  fi
}

visual_mode?() {
  if [[ "$arg_visual_mode" == "true" ]]; then
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

  if [[ $ORIGINAL_VALUE == *"does not exist"* ]]; then
    ORIGINAL_VALUE="NONE"
    echo -e -n " ┣━ ${YELLOW}NEW   ${RESET} ━ "
  else
    echo -e -n " ┣━ ${GREEN}UPDATE${RESET} ━ "
  fi

  echo "defaults write $DOMAIN $KEY $VALUE_TYPE $NEW_VALUE"

  BACKUP_FILE_CONTENT="#!/bin/bash\nDOMAIN=\"$DOMAIN\";\nKEY=\"$KEY\";\nVALUE_TYPE=\"$VALUE_TYPE\";\nVALUE=\"$ORIGINAL_VALUE\";"
  echo -e "$BACKUP_FILE_CONTENT" > $backup_dir/${SANITIZED_FILE_NAME}

  visual_mode?
}

restore() {
  announce_module "ARTISAN BACKUP RESET"

  if [ "$arg_backup_name" == "false" ]; then 
    if [ -d "$backup_path/000" ]; then
      announce "Restoring using the oldest backup (000)"
      backup_dir="$backup_path/000"
    else
      announce "No directory specified and 000 doesn't exist."
      separate
      exit
    fi
  else
    if [ -d "$backup_dir" ]; then
      announce "Restoring using backup $backup_dir"
    else
      announce "Backup $arg_backup_name not found."
      separate
      exit
    fi
  fi

  for file in $backup_dir/*; do
    source $file

    if [[ $VALUE == "NONE" ]]; then
      announce "${RED}DELETE ${RESET} ━ Value was not set before ARTISAN."
      announce "defaults delete $DOMAIN $KEY"
    else
      announce  "${GREEN}RESTORE${RESET} ━ Value was set before ARTISAN."
      announce "defaults write $DOMAIN $KEY $VALUE_TYPE $VALUE"
    fi

    visual_mode?
  done
}
