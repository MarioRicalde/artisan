_='
┌──────────────────────────────────────────────────────────────────────────────┐
│  ╔════╗  DO NOT EDIT THIS FILE                                               │
│──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
│  ╚════╝  Instead, override settings in `~/.zshrc_personal`                   │
╞══════════════════════════════════════════════════════════════════════════════╡ 
│  Docs: https://git.io/fhx1B                                 License: BSD 3-C │ 
└──────────────────────────────────────────────────────────────────────────────┘
'
# Wrapper to make the UX better for the howdoi command, mnemonic: "How?"

alias how='function hdi(){ echo "================================================================================\n\\033[48;5;95;38;5;214m HOW DO I? \\033[0m $@ \n================================================================================\n"; howdoi $* -c -n 5; }; hdi'

