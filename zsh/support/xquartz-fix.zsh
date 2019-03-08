_='
┌──────────────────────────────────────────────────────────────────────────────┐
│  ╔════╗  DO NOT EDIT THIS FILE                                               │
│──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
│  ╚════╝  Instead, override settings in `~/.zshrc_personal`                   │
╞══════════════════════════════════════════════════════════════════════════════╡ 
│  Docs: https://git.io/fhx1B                                 License: GPL 3.0 │ 
└──────────────────────────────────────────────────────────────────────────────┘
'
# XQuartz: If using xterm exit and switch to iterm
#
# XQuartz is apparently refusing to connect to our iTerm Session ( with Vim ), for clipboard sharing, unless you run xterm ONCE. Once you do that it works flawlessly.
# With this we understand that:
#
#   1. xterm needs to open once when XQuartz open, so do it and exit with our zshrc instead of overriding the defaults.
#   2. You can run xterm from iTerm to fix sync if XQuartz opened on its own via iTerm’s processes.
if [[ -v XTERM_VERSION ]]; then
  sleep 0.1;
  osascript -e 'activate application "iTerm"' &!;
  exit;
fi