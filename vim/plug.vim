" Plugin Initialization.
call plug#begin('~/.vim/plugged')
" Functionality.
Plug '/opt/tools/utils/fzf' | Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-easy-align',       { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'rking/ag.vim'
Plug 'tpope/vim-surround'
" Offers <lead>s which opens a file explorer.
Plug 'scrooloose/nerdtree'
" Offers C-hjkl that works inside vim and tmux panels.
Plug 'christoomey/vim-tmux-navigator'
" Offers <space><space>
Plug 'easymotion/vim-easymotion'
" Expands / to be incremental
Plug 'haya14busa/incsearch.vim'
" Theme.
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/xoria256.vim'
"Languages
Plug 'tpope/vim-liquid'
Plug 'jelera/vim-javascript-syntax'
call plug#end()
