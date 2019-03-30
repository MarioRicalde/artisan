" ┌──────────────────────────────────────────────────────────────────────────────┐
" │  ╔════╗  DO NOT EDIT THIS FILE                                               │
" │──╢ 🔒 ╟──────────────────────────────────────────────────────────────────────┤
" │  ╚════╝  Instead, override settings in `~/.plug_personal`                    │
" ╞══════════════════════════════════════════════════════════════════════════════╡
" │  Docs: https://git.io/fhx1B                                 License: BSD 3-C │
" └──────────────────────────────────────────────────────────────────────────────┘

" -- GENERAL CONFIGURATION -------------------------------------------------------
call plug#begin('~/.vim/plugged')


" -- FUNCTIONALITY ---------------------------------------------------------------

Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }

" TODO: Deprecated!
Plug 'rking/ag.vim'
" TODO: Possible alternative https://github.com/wellle/targets.vim
Plug 'tpope/vim-surround'

" nerdtree - tree file
"
" Usage:
" 	<leader>s - toggle nerdtree
"   <leader>sf - reveal buffer file in nerd tree
Plug 'scrooloose/nerdtree'

" easymotion - much simpler way to use motions in vim
" TODO: Fully configure this.
"
" Usage:
Plug 'easymotion/vim-easymotion'

" Expands / to be incremental
"
" Usage:
"   /
Plug 'haya14busa/incsearch.vim'

" Multiple cursors
"
" Usage:
"   Start - <C-n> c, s, I, A
"   Next  - <C-n>
"   Skip  - <C-x>
"   Prev  - <C-p>
"   ALL   - <A-n>
"   :'<, '>MultipleCursorsFind REGEX
Plug 'terryma/vim-multiple-cursors'

" Vim eunuch - Helpers for Unix
"
" Usage:
"   :Delete    - Delete a buffer and the file on disk simultaneously.
"   :Unlink    - Like -Delete, but keeps the now empty buffer.
"   :Move      - Rename a buffer and the file on disk simultaneously.
"   :Rename    - Like :Move, but relative to the current file's containinpg directory.
"   :Chmod     - Change the permissions of the current file.
"   :Mkdir     - Create a directory, defaulting to the parent of the current file.
"   :Cfind     - Run find and load the results into the quickfix list.
"   :Clocate   - Run locate and load the results into the quickfix list.
"   :Lfind/    - Llocate- Like above, but use the location list.
"   :Wall      - Write every open window. Handy for kicking off tools like guard.
"   :SudoWrite - Write a privileged file with sudo.
"   :SudoEdit  - Edit a privileged file with sudo.
Plug 'tpope/vim-eunuch'

" Signify - ➕ Show a diff using Vim its sign column.
Plug 'mhinz/vim-signify'

" vim-signature - show marks in the gutter.
"
" Usage:
" ┌─────────────┬───────────────────────────────────────────────────────────┐
" │ COMMAND     │                                                           │
" ├─────────────┼───────────────────────────────────────────────────────────┤
" │ mx          │  Toggle mark 'x' and display it in left column.           │
" │ dmx         │  Remove mark 'x' where x is a-zA-Z                        │
" │ m,          │  Place the next available mark.                           │
" │ m-          │  Delete all marks from the current line                   │
" │ m<Space>    │  Delete all marks in the current buffer.                  │
" │ ]`          │  Jump to the next mark.                                   │
" │ [`          │  Jump to the previous mark.                               │
" │ m/          │  Open location list and display marks from current        │
" │             │  buffer.                                                  │
" └─────────────┴───────────────────────────────────────────────────────────┘
Plug 'kshenoy/vim-signature'

" Indent Guides
"
" Usage:
"   :IndentLinesToggle
Plug 'Yggdroot/indentLine'

" startify - the fancy start screen for vim
" 
" Usage:
"   :Startify
"   Opening vim.
Plug 'mhinz/vim-startify'

" deoplete - Dark powered asynchronous completion framework for neovim/Vim8
"
" Usage:
"   type
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" neosnippet
"
" Usage:
"   Type as you go, then when deoplete opens:
"   <C-k> to select and expand & jump inside snippet.
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" https://github.com/wellle/tmux-complete.vim
" gundo - visualize vim undo tree
"
" Usage:
"   :GundoToggle
Plug 'sjl/gundo.vim'

" nerdcommenter - comment functions
" 
" Usage:
"   <leader>cc - comment out current line or selected text
"   <leader>cn - same as cc but forces nesting
"   <leader>c<space> - toggle comment
"   <leader>c% - comment to end of document
"   <leader>cu - uncomment lines
Plug 'scrooloose/nerdcommenter'


" Emmet - html abbreviations 
"
" Usage:
"   div.something>ul.menu>li.item*3>a
"   <C-y>, - expand key
Plug 'mattn/emmet-vim'


" TODO:
" https://github.com/w0rp/ale
" https://github.com/vim-syntastic/syntastic
" https://github.com/honza/vim-snippets

" -- SUPPORT ---------------------------------------------------------------------

" vim-tmux-navigator - seamless pane navigation
"
" Usage:
"   <C-h> - left
"   <C-j> - down
"   <C-k> - up
"   <C-l> - right
Plug 'christoomey/vim-tmux-navigator'

" vim-fugitive - the best git wrapper for vim
"
" Usage:
" ┌─────────────┬───────────────────────────────────────────────────────────┐
" │ COMMAND     │                                                           │
" ├─────────────┼───────────────────────────────────────────────────────────┤
" │ :Gblame     │  interactive `git blame` output.                          │
" │ :Gmove      │  does git `git mv` and simultaneously rename buffer.      │
" │ :Gwrite     │  equivalent of git `git add .`                            │
" │ :Gread      │  variant of `git checkout -- filename` using              │
" │             │  the buffer.                                              │
" │ :Gcommit    │  If there's nothing to commit :Gstatus is called          │
" │             │  instead.                                                 │
" │ :Gpush      │  variant of `git checkout -- filename` using the          │
" │             │  buffer.                                                  │
" │ :Glog       │  load previous revisions of file into quickfix list,      │
" │             │  use  [q for :cprevious an ]q for :cnext                  │
" │ :Gstatus    │  Equivalent to `git status` but interactive.              │
" │             │     `-`  - keys to toggle.                                │
" │             │     `=`  - inline diff toggle.                            │
" │             │     `P`  - Add --patch or reset --patch                   │
" │             │     `dd` - Perform a :Gdiff                               │
" └─────────────┴───────────────────────────────────────────────────────────┘
Plug 'tpope/vim-fugitive'

" vim-unimpaired - handy bracket mappings
"
" Usage:
"   ┌──────────────────────────────────┬──────────────────────────────────┐
"   │  PREVIOUS                        │  NEXT                            │
"   ├──────────────────────────────────┼──────────────────────────────────┤
"   │  [a     - :previous              │  ]a     - :next                  │
"   │  [A     - :first                 │  ]A     - :next                  │
"   │  [b     - :bprevious             │  ]b     - :bnext                 │
"   │  [B     - :bfirst                │  ]B     - :blast                 │
"   │  [l     - :lprevious             │  ]l     - :lnext                 │
"   │  [L     - :lfirst                │  ]L     - :llast                 │
"   │  [<C-L> - :lpfile                │  ]<C-L> - :lnfile                │
"   │  [q     - :cprevious             │  ]q     - :cnext                 │
"   │  [Q     - :cfirst                │  ]Q     - :clast                 │
"   │  [t     - :tprevious             │  ]t     - :tnext                 │
"   │  [T     - :tfirst                │  ]T     - :tlast                 │
"   │  [T     - :tfirst                │  ]T     - :tlast                 │
"   │  [<C-T> - :ptprevious            │  ]<C-T> - :ptnext                │
"   └──────────────────────────────────┴──────────────────────────────────┘
Plug 'tpope/vim-unimpaired'

" vim-lessmess - Remove white-space mess from files.
"
" Usage:
" ┌───────────────────┬─────────────────────────────────────────────────────┐
" │ COMMAND           │                                                     │
" ├───────────────────┼─────────────────────────────────────────────────────┤
" │ :LessmessForceEx  │ Trigger the cleanup.                                │
" │            ecute  │                                                     │
" │ :LessmessDisplay  │ Show highlighting for whitespaces.                  │
" │           Toggle  │                                                     │
" │ :LessmessToggle   │ Enable/Disable Lessmess.                            │
" └───────────────────┴─────────────────────────────────────────────────────┘
Plug 'mboughaba/vim-lessmess'

" -- THEME -----------------------------------------------------------------------

Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'


" -- LANGUAGES -------------------------------------------------------------------

Plug 'sheerun/vim-polyglot'


" -- PERSONAL OVERRIDES ----------------------------------------------------------

if filereadable(expand("~/.plug_personal"))
  source ~/.plug_personal
endif


call plug#end()
