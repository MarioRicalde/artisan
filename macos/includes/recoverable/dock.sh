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

announce_module "Dock"
push_app "Dock"

announce "Enable highlight hover effect for the grid view of a stack (Dock)"
backup_and_write 'com.apple.dock' 'mouse-over-hilite-stack' '-bool' 'true'

announce "Set the icon size of Dock items to 48 pixels"
backup_and_write 'com.apple.dock' 'tilesize' '-int' '48'

announce "Change minimize/maximize window effect"
backup_and_write 'com.apple.dock' 'mineffect' '-string' '"scale"'

announce "Enable spring loading for all Dock items"
backup_and_write 'com.apple.dock' 'enable-spring-load-actions-on-all-items' '-bool' 'true'

announce "Show indicator lights for open applications in the Dock"
backup_and_write 'com.apple.dock' 'show-process-indicators' '-bool' 'true'

announce "Don’t animate opening applications from the Dock"
backup_and_write 'com.apple.dock' 'launchanim' '-bool' 'false'

announce "Speed up Mission Control animations"
backup_and_write 'com.apple.dock' 'expose-animation-duration' '-float' '0.1'

announce "Don’t group windows by application in Mission Control"
backup_and_write 'com.apple.dock' 'expose-group-by-app' '-bool' 'false'

announce "Don’t show Dashboard as a Space"
backup_and_write 'com.apple.dock' 'dashboard-in-overlay' '-bool' 'true'

announce "Don’t automatically rearrange Spaces based on most recent use"
backup_and_write 'com.apple.dock' 'mru-spaces' '-bool' 'false'

announce "Don’t show recent applications in Dock"
backup_and_write 'com.apple.dock' 'show-recents' '-bool' 'false'

