let g:EasyMotion_keys = 'asdfghjkl;qwertyuiop'

" <Leader>f{char} to move to {char}
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to anywhere
map <Space><Space> <Plug>(easymotion-jumptoanywhere)
