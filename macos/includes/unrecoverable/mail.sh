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

announce_module "Mail"

announce "Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app"
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

announce "Display emails in threaded mode, sorted by date (oldest at the top)"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"
