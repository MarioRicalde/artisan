#!/bin/bash

do_command() {
  announce "${@}"
  eval "${@}"
}

backup_and_symlink() {
  do_command "mv -v $h_path $h_path$artisan_file_suffix > /dev/null"
  do_command "ln -sf $a_path $h_path"
}

# This is for nuking.
mark_file() {
  announce "Marking file with ARTISAN-MOVED."
  echo -e "# ARTISAN-MOVED\n$(cat $1)" > $1
}

resolve_gitconfig() {
  if [[ -f $h_path ]]; then 
    split && announce_file_contents $h_path
    read -p "Would you like to use this file as .gitconfig_personal (y/n)?  " -n 1 -r
    echo -e "\n" && resume
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      do_command "mv -v $h_path $HOME/.gitconfig_personal"
      mark_file $HOME/.gitconfig_personal
      do_command "ln -sf $a_path $h_path"
    else
      backup_and_symlink
    fi
  fi
}
