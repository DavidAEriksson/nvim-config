local opt = vim.opt

-- Path thingies
vim.cmd([[
	set path+=**
	set shell=/bin/zsh
	set wildignore+=**/.git/
	set wildignore+=**/node_modules/
]])

-- Set leader to space
vim.g.mapleader = " "

-- Default settings
opt.backspace = 'indent,eol,start'
opt.completeopt = 'menu,menuone,noselect'
opt.startofline = true
opt.autochdir = true
opt.clipboard = 'unnamedplus'
opt.hidden = true
vim.cmd([[
	set nowrap
]])

-- Encoding
opt.encoding = 'UTF-8'
opt.fileencoding = 'UTF-8'

-- STOP comment continuation on newline
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Sidebar and numbers
opt.number = true
opt.numberwidth = 3
opt.signcolumn = 'yes'
opt.modelines = 0
opt.showcmd = true
opt.relativenumber = true

-- Tabs and whitespace
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
vim.g.nowrap = true

-- Windows
opt.splitbelow = true
opt.splitright = true
opt.showtabline = 1

-- Colors
opt.background = 'dark'
opt.colorcolumn = '120'
vim.g.t_Co = '256'
-- vim.g.substrata_italic_functions = true
-- vim.cmd([[
--   if has('termguicolors')
--     set termguicolors
--   endif
-- ]])
-- vim.g.everforest_background= 'medium'
vim.cmd [[colorscheme terafox]]

-- Cursor
opt.ruler = true
opt.cursorline = true
opt.scrolloff = 10

-- Backups
vim.g.noswapfile = true
opt.swapfile = false

-- Search
vim.cmd [[set nohlsearch]]
vim.g.incsearch = true

-- Statusline
opt.laststatus = 1

vim.cmd([[
	let g:prettier#autoformat = 1
	let g:prettier#autoformat_require_pragma = 0
]])

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd[[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=400})
  augroup END
]]
