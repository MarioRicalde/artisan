#!/bin/bash

# arg_visual_mode='false'

arg_visual_mode='false'
arg_backup_name='false'
arg_unrecoverable='false'

while getopts ":vp:u" o; do
  case "${o}" in
    v) arg_visual_mode='true' ;;
    p) arg_backup_name=${OPTARG} ;;
    u) arg_unrecoverable='true' ;;
    *) usage ;;
  esac
done
shift $((OPTIND-1))
