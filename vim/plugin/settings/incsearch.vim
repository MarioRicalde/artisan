" ┌──────────────────────────────────────────────────────────────────────────────┐
" │  ╔════╗  DO NOT EDIT THIS FILE                                               │
" │──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
" │  ╚════╝  Instead, override settings in `~/.plug_personal`                    │
" ╞══════════════════════════════════════════════════════════════════════════════╡
" │  Docs: https://git.io/fhx1B                                 License: BSD 3-C │
" └──────────────────────────────────────────────────────────────────────────────┘

" -- GENERAL CONFIGURATION -------------------------------------------------------

" Mapping
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
