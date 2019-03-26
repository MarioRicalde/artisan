#!/usr/bin/env bash
_='
┌──────────────────────────────────────────────────────────────────────────────┐
│  ╔════╗  DO NOT EDIT THIS FILE                                               │
│──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
│  ╚════╝  If there is an option that makes no sense, create a Pull Request.   │
╞══════════════════════════════════════════════════════════════════════════════╡
│  Docs: https://git.io/fhx1B                                 License: BSD 3-C │
└──────────────────────────────────────────────────────────────────────────────┘
'

announce_module "iTerm"

announce "Use the artisan settings for this, seriously"
backup_and_write 'com.googlecode.iterm2.plist' 'LoadPrefsFromCustomFolder' '-bool' 'true'
backup_and_write 'com.googlecode.iterm2.plist' 'PrefsCustomFolder' '-string' '~/.artisan/iterm'
