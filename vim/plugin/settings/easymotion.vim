" ┌──────────────────────────────────────────────────────────────────────────────┐
" │  ╔════╗  DO NOT EDIT THIS FILE                                               │
" │──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
" │  ╚════╝  Instead, override settings in `~/.plug_personal`                    │
" ╞══════════════════════════════════════════════════════════════════════════════╡
" │  Docs: https://git.io/fhx1B                                 License: BSD 3-C │
" └──────────────────────────────────────────────────────────────────────────────┘

" -- GENERAL CONFIGURATION -------------------------------------------------------

let g:EasyMotion_keys = 'asdfghjkl;qwertyuiop'

" <Leader>f{char} to move to {char}
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to anywhere
map <Space><Space> <Plug>(easymotion-jumptoanywhere)
