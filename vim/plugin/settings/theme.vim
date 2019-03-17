" Set Vim-specific sequences for RGB colors.
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:nord_comment_brightness = 12
colorscheme nord
