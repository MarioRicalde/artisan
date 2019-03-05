let g:ag_highlight=1

" Search and Replace with Ag and Qdo
" :Ag someterm
" :Qdo %s//replace/gc
command! -nargs=0 -bar Qargs execute 'args ' . s:QuickfixFilenames()
command! -nargs=1 -complete=command -bang Qdo call s:Qdo(<q-bang>, <q-args>)

function! s:Qdo(bang, command)
  if exists('w:quickfix_title')
    let in_quickfix_window = 1
    cclose
  else
    let in_quickfix_window = 0
  endif

  arglocal
  exe 'args '.s:QuickfixFilenames()
  " Ignore Auto Commands, this makes changes as fast as possible.
  exe 'noautocmd argdo'.a:bang.' '.a:command. ' | update'
  argglobal

  if in_quickfix_window
    copen
  endif
endfunction

function! s:QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

