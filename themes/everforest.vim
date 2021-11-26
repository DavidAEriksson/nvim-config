syntax on
colorscheme everforest
let g:everforest_background = 'hard'
" Checks if your terminal has 24-bit color support.
" I use iTerm2 as my default terminal which supports 24-bit color.
if (has("termguicolors"))
    set termguicolors
endif
