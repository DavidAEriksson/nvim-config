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
vim.o.backspace = 'indent,eol,start' 
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.startofline = true
vim.o.autochdir = true
vim.o.updatetime = 100
vim.o.timeoutlen = 500
vim.o.clipboard = 'unnamedplus'

-- Encoding
vim.o.encoding = 'UTF-8'
vim.o.fileencoding = 'UTF-8'

-- Stop comment continuation on newline
vim.cmd([[
	set formatoptions-=cro
]])


-- Sidebar and numbers
vim.o.number = true
vim.o.numberwidth = 3
vim.o.signcolumn = 'yes'
vim.o.modelines = 0
vim.o.showcmd = true
vim.o.relativenumber = true

-- Tabs and whitespace
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.g.nowrap = true

-- Windows
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showtabline = 2

-- Colors
vim.o.background = 'dark'
vim.cmd([[
	syntax enable
]])
vim.o.colorcolumn = '120'
vim.g.t_Co = '256'
-- vim.g.substrata_italic_functions = true
vim.cmd [[colorscheme nord]]


-- Cursor
vim.o.ruler = true
vim.o.cursorline = true

-- Backups
vim.g.noswapfile = true

-- Search
vim.g.nohlsearch = true
vim.g.incsearch = true

-- Statusline
vim.o.laststatus = 1
