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

announce_module "Finder"

announce "Allow quitting via ⌘ + Q; doing so will also hide desktop icons"
backup_and_write 'com.apple.finder' 'QuitMenuItem' '-bool' 'true'

announce "Disable window animations and Get Info animations"
backup_and_write 'com.apple.finder' 'DisableAllAnimations' '-bool' 'true'

announce "Set Desktop as the default location for new Finder windows"
backup_and_write 'com.apple.finder' 'NewWindowTarget' '-string' '"PfDe"'
backup_and_write 'com.apple.finder' 'NewWindowTargetPath' '-string' '"file://${HOME}/Desktop/"'

announce "Show icons for hard drives, servers, and removable media on the desktop"
backup_and_write 'com.apple.finder' 'ShowExternalHardDrivesOnDesktop' '-bool' 'true'
backup_and_write 'com.apple.finder' 'ShowHardDrivesOnDesktop' '-bool' 'true'
backup_and_write 'com.apple.finder' 'ShowMountedServersOnDesktop' '-bool' 'true'
backup_and_write 'com.apple.finder' 'ShowRemovableMediaOnDesktop' '-bool' 'true'

announce "show all filename extensions"
backup_and_write 'NSGlobalDomain' 'AppleShowAllExtensions' '-bool' 'true'

announce "show status bar"
backup_and_write 'com.apple.finder' 'ShowStatusBar' '-bool' 'true'

announce "show path bar"
backup_and_write 'com.apple.finder' 'ShowPathbar' '-bool' 'true'

announce "Display full POSIX path as Finder window title"
backup_and_write 'com.apple.finder' '_FXShowPosixPathInTitle' '-bool' 'true'

announce "Keep folders on top when sorting by name"
backup_and_write 'com.apple.finder' '_FXSortFoldersFirst' '-bool' 'true'

announce "When performing a search, search the current folder by default"
backup_and_write 'com.apple.finder' 'FXDefaultSearchScope' '-string' '"SCcf"'

announce "Disable the warning when changing a file extension"
backup_and_write 'com.apple.finder' 'FXEnableExtensionChangeWarning' '-bool' 'false'

announce "Enable spring loading for directories"
backup_and_write 'NSGlobalDomain' 'com.apple.springing.enabled' '-bool' 'true'

announce "Remove the spring loading delay for directories"
backup_and_write 'NSGlobalDomain' 'com.apple.springing.delay' '-float' '0'

announce "Avoid creating .DS_Store files on network or USB volumes"
backup_and_write 'com.apple.desktopservices' 'DSDontWriteNetworkStores' '-bool' 'true'
backup_and_write 'com.apple.desktopservices' 'DSDontWriteUSBStores' '-bool' 'true'

announce "Disable disk image verification"
backup_and_write 'com.apple.frameworks.diskimages' 'skip-verify' '-bool' 'true'
backup_and_write 'com.apple.frameworks.diskimages' 'skip-verify-locked' '-bool' 'true'
backup_and_write 'com.apple.frameworks.diskimages' 'skip-verify-remote' '-bool' 'true'

announce "Automatically open a new Finder window when a volume is mounted"
backup_and_write 'com.apple.frameworks.diskimages' 'auto-open-ro-root' '-bool' 'true'
backup_and_write 'com.apple.frameworks.diskimages' 'auto-open-rw-root' '-bool' 'true'
backup_and_write 'com.apple.finder' 'OpenWindowForNewRemovableDisk' '-bool' 'true'

announce "Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
backup_and_write 'com.apple.finder' 'FXPreferredViewStyle' '-string' '"Nlsv"'

announce "Disable the warning before emptying the Trash"
backup_and_write 'com.apple.finder' 'WarnOnEmptyTrash' '-bool' 'false'

announce "Enable AirDrop over Ethernet and on unsupported Macs running Lion"
backup_and_write 'com.apple.NetworkBrowser' 'BrowseAllInterfaces' '-bool' 'true'
