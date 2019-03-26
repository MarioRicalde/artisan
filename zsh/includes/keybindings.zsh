_='
┌──────────────────────────────────────────────────────────────────────────────┐
│  ╔════╗  DO NOT EDIT THIS FILE                                               │
│──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
│  ╚════╝  Instead, override settings in `~/.zshrc_personal`                   │
╞══════════════════════════════════════════════════════════════════════════════╡ 
│  Docs: https://git.io/fhx1B                                 License: BSD 3-C │ 
└──────────────────────────────────────────────────────────────────────────────┘
'

# Stripped version of oh-my-zsh/lib/key-bindings.zsh

bindkey ' ' magic-space                               # [Space] - do history expansion
bindkey "e[3~" delete-char                            # Del deletes character
bindkey '^[[1;5C' forward-word                        # [Ctrl-RightArrow] - move forward one word
bindkey '^[[1;5D' backward-word                       # [Ctrl-LeftArrow] - move backward one word
bindkey '^?' backward-delete-char                     # [Backspace] - delete backward
# Edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
# file rename magick
bindkey "^[m" copy-prev-shell-word

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
