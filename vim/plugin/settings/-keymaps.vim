" ==============================
" Navigation
" ==============================
" Page Down is just not really efficient, becuause it gets you lost.
nnoremap <C-d> 5jzz
nnoremap <C-u> 5kzz

" ============================
" " Shortcuts for everyday tasks
" " ============================

" Split Line, close to J (Join)
nnoremap K i<CR><ESC>

" " Select last pasted text.
nnoremap <expr> pv '`[' . strpart(getregtype(), 0, 1) . '`]'
