#!/usr/bin/env bash
_='
┌──────────────────────────────────────────────────────────────────────────────┐
│  ╔════╗  DO NOT EDIT THIS FILE                                               │
│──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
│  ╚════╝  If there is an option that makes no sense, create a Pull Request.   │
╞══════════════════════════════════════════════════════════════════════════════╡
│  Docs: https://git.io/fhx1B                                 License: GPL 3.0 │
└──────────────────────────────────────────────────────────────────────────────┘
'

announce_module "Google Chrome & Google Chrome Canary"
push_app "Google Chrome"
push_app "Google Chrome Canary"

announce "Allow installing user scripts via GitHub Gist or Userscripts.org"
backup_and_write 'com.google.Chrome' 'ExtensionInstallSources' '-array' '"https://gist.githubusercontent.com/" "http://userscripts.org/*"'
backup_and_write 'com.google.Chrome.canary' 'ExtensionInstallSources' '-array' '"https://gist.githubusercontent.com/" "http://userscripts.org/*"'

announce "Disable the all too sensitive backswipe on trackpads"
backup_and_write 'com.google.Chrome' 'AppleEnableSwipeNavigateWithScrolls' '-bool' 'false'
backup_and_write 'com.google.Chrome.canary' 'AppleEnableSwipeNavigateWithScrolls' '-bool' 'false'

announce "Disable the all too sensitive backswipe on Magic Mouse"
backup_and_write 'com.google.Chrome' 'AppleEnableMouseSwipeNavigateWithScrolls' '-bool' 'false'
backup_and_write 'com.google.Chrome.canary' 'AppleEnableMouseSwipeNavigateWithScrolls' '-bool' 'false'

announce "Use the system-native print preview dialog"
backup_and_write 'com.google.Chrome' 'DisablePrintPreview' '-bool' 'true'
backup_and_write 'com.google.Chrome.canary' 'DisablePrintPreview' '-bool' 'true'

announce "Expand the print dialog by default"
backup_and_write 'com.google.Chrome' 'PMPrintingExpandedStateForPrint2' '-bool' 'true'
backup_and_write 'com.google.Chrome.canary' 'PMPrintingExpandedStateForPrint2' '-bool' 'true'

