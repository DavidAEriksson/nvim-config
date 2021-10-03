syntax on
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" Checks if your terminal has 24-bit color support.
" I use iTerm2 as my default terminal which supports 24-bit color.
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
