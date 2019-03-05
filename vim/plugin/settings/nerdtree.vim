" Hotkeys
nmap <leader>s :NERDTreeToggle<cr>
" Open the project tree and expose current file in the nerdtree with Ctrl-\
nnoremap <silent> <leader>sf :NERDTreeFind<CR>:vertical res 30<CR>

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Tabs
" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 0
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1
