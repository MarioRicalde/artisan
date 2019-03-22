#!/bin/bash

# arg_visual_mode='false'

arg_visual_mode='false'
arg_backup_name='false'

while getopts ":vp:" o; do
  case "${o}" in
    v) arg_visual_mode='true' ;;
    p) arg_backup_name=${OPTARG} ;;
    *) usage ;;
  esac
done
shift $((OPTIND-1))
