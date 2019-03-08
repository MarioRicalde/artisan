_='
┌──────────────────────────────────────────────────────────────────────────────┐
│  ╔════╗  DO NOT EDIT THIS FILE                                               │
│──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
│  ╚════╝  Instead, override settings in `~/.zshrc_personal`                   │
╞══════════════════════════════════════════════════════════════════════════════╡ 
│  Docs: https://git.io/fhx1B                                 License: GPL 3.0 │ 
└──────────────────────────────────────────────────────────────────────────────┘
'
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Tmux Plugin Manager.
alias tmux-clean-plugins=$ARTISAN/tmux/plugins/tpm/bin/clean_plugins
alias tmux-install-plugins=$ARTISAN/tmux/plugins/tpm/bin/install_plugins
alias tmux-update-plugins=$ARTISAN/tmux/plugins/tpm/bin/update_plugins
