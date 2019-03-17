###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Enable “focus follows mouse” for Terminal.app and all X11 apps
# i.e. hover over a window and start typing in it without clicking first
#defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true

start_if_needed() {
  local grep_name="[${1:0:1}]${1:1}"

  if [[ -z $(ps aux | grep -e "${grep_name}") ]]; then
    if [ -e ~/Applications/$1.app ]; then
      open ~/Applications/$1.app
    else
      if [ -e /Applications/$1.app ]; then
        open /Applications/$1.app
      fi
    fi
  fi

  true
}

# Install the Solarized Dark theme for iTerm
start_if_needed iTerm
open "${HOME}/init/Solarized Dark.itermcolors"

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false



# https://www.iterm2.com/documentation-hidden-settings.html
# https://iterm2.com/documentation-scripting.html
# disable using the pinch gesture to change font size
defaults write com.googlecode.iterm2 PinchToChangeFontSizeDisabled -bool true


# Mario's change.s
###############################################################################

# General > Applications in terminal my access the clipboard.
defaults write ~/Library/Preferences/com.googlecode.iterm2 AllowClipboardAccess 1

# Use the artisan settings for this, seriously.
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.artisan/iterm"

# Open. Restart. Open. This is the only way it loads the plist.
open /Applications/iTerm.app; sudo pkill -9 iTerm; open /Applications/iTerm.app;

