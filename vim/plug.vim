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

Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/xoria256.vim'


" -- LANGUAGES -------------------------------------------------------------------

Plug 'tpope/vim-liquid'
Plug 'jelera/vim-javascript-syntax'
call plug#end()
