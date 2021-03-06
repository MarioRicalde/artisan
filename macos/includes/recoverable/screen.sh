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

announce_module "Screen"

announce "Require password immediately after sleep or screen saver begins"
backup_and_write 'com.apple.screensaver' 'askForPassword' '-int' '1'
backup_and_write 'com.apple.screensaver' 'askForPasswordDelay' '-int' '0'

announce "Save screenshots to the desktop"
backup_and_write 'com.apple.screencapture' 'location' '-string' '"${HOME}/Desktop"'

announce "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
backup_and_write 'com.apple.screencapture' 'type' '-string' '"png"'

announce "Enable subpixel font rendering on non-Apple LCDs"
backup_and_write 'NSGlobalDomain' 'AppleFontSmoothing' '-int' '1'
