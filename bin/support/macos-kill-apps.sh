#!/bin/bash

apps_to_kill=()
push_app() {
  apps_to_kill+=("${1}")
}

# Kill applications
kill_all_apps() {
  announce_module "Killing affected apps"
  for app in "${apps_to_kill[@]}"; do
    announce "${app}"
    killall "${app}" > /dev/null 2>&1
  done

  announce "iTerm. Open. Restart. Open. This is the only way it loads the plist."
  sudo pkill -9 iTerm;
  open /Applications/iTerm.app; 
  sudo pkill -9 iTerm; 
  open /Applications/iTerm.app;
  separate
}
