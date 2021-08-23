syntax on
colorscheme nord


" Checks if your terminal has 24-bit color support.
" I use iTerm2 as my default terminal which supports 24-bit color.
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
