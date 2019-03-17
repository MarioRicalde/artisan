" ┌──────────────────────────────────────────────────────────────────────────────┐
" │  ╔════╗  DO NOT EDIT THIS FILE                                               │
" │──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
" │  ╚════╝  Instead, override settings in `~/.plug_personal`                    │
" ╞══════════════════════════════════════════════════════════════════════════════╡
" │  Docs: https://git.io/fhx1B                                 License: GPL 3.0 │
" └──────────────────────────────────────────────────────────────────────────────┘

" -- GENERAL CONFIGURATION -------------------------------------------------------
call plug#begin('~/.vim/plugged')


" -- FUNCTIONALITY ---------------------------------------------------------------

Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'rking/ag.vim'
Plug 'tpope/vim-surround'
" Offers <lead>s which opens a file explorer.
Plug 'scrooloose/nerdtree'
" Offers <space><space>
Plug 'easymotion/vim-easymotion'
" Expands / to be incremental
Plug 'haya14busa/incsearch.vim'


" -- SUPPORT ---------------------------------------------------------------------

" Offers C-hjkl that works inside vim and tmux panels.
Plug 'christoomey/vim-tmux-navigator'


" -- THEME -----------------------------------------------------------------------

Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }
Plug 'itchyny/lightline.vim'


" -- LANGUAGES -------------------------------------------------------------------

Plug 'tpope/vim-liquid'
Plug 'jelera/vim-javascript-syntax'


" -- PERSONAL OVERRIDES ----------------------------------------------------------

if filereadable(expand("~/.plug_personal"))
  source ~/.vimrc_personal
endif


call plug#end()
