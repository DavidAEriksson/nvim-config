vim.cmd('noremap <C-b> :noh<cr>:call clearmatches()<cr>') -- clear matches Ctrl+b

local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function imap(shortcut, command)
  map('i', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

local function cmap(shortcut, command)
  map('c', shortcut, command)
end

local function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- I hate escape more than anything else
imap('jk', '<Esc>')
imap('kj', '<Esc>')
nmap('<leader>q', '<Esc>')

-- Tab to next S-Tab to prev buf
nmap('<TAB>', ':bnext<CR>')
nmap('<S-TAB>', ':bprevious<CR>')
nmap('<leader>bd', ':bd<CR>')

-- Visual mode tabbing
vmap('<', '<gv')
vmap('>', '>gv')

-- Window navigation
nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

-- Save all open buffers
nmap('<Leader>ww', '<cmd>bufdo w<CR>')

-- Behave like the rest of us Y
nmap('Y', 'y$')

-- Yank function
nmap('<leader>yf', 'y<S-V>a<S-B><CR>')

-- Don't send me flying
nmap('n', 'nzzzv')
nmap('N', 'nzzzv')
nmap('J', 'mzJ`z')

-- Undo breakpoints
imap(',', ',<c-g>')
imap('.', '.<c-g>')
imap('!', '!<c-g>')
imap('?', '?<c-g>')
imap('(', '(<c-g>')
imap(')', ')<c-g>')
imap('[', '[<c-g>')
imap(']', ']<c-g>')
imap('{', '}<c-g>')
imap('}', '}<c-g>')

-- Move all the text (:
vmap('J', ":m '>+1<CR>gv=gv")
vmap('K', ":m '<-2<CR>gv=gv")
nmap('<leader>j', '<esc>:m .+1<CR>==')
nmap('<leader>k', '<esc>:m .-2<CR>==')

-- Harpoon
nmap('<leader>ha', "<cmd> lua require('harpoon.mark').add_file()<CR>")
nmap('<leader>hm', "<cmd> lua require('harpoon.ui').toggle_quick_menu()<CR>")
nmap('<leader>h1', "<cmd> lua require('harpoon.ui').nav_file(1)<CR>")
nmap('<leader>h2', "<cmd> lua require('harpoon.ui').nav_file(2)<CR>")
nmap('<leader>h3', "<cmd> lua require('harpoon.ui').nav_file(3)<CR>")
nmap('<leader>h4', "<cmd> lua require('harpoon.ui').nav_file(4)<CR>")

-- NerdTree
nmap('<leader>e', ':NvimTreeToggle<CR>')

-- Telescope
nmap('<S-f>', ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10, layout_config = { width = 0.7, height = 0.6 } }))<CR>")
nmap('<leader>rg', ':Telescope live_grep<CR>')
nmap('<leader>fb', ':Telescope buffers<CR>')
nmap('<leader>fh', ':Telescope help_tags<CR>')
nmap('<leader>wt', ':lua require("telescope").extensions.git_worktree.git_worktrees()<CR>')
nmap('<leader>cw', ':lua require("telescope").extensions.git_worktree.create_git_worktree()<CR>')

-- Omnisharp tests
nmap('<leader>ot',':OmniSharpRunTest<CR>')
nmap('<leader>otf',':OmniSharpRunTestsInFile<CR>')

-- Terminal
nmap('<leader>ter', '<cmd>:FloatermNew<CR>')

-- Trouble in paradize
nmap('<leader>tt', '<cmd>TroubleToggle<CR>')
nmap('<leader>tw', '<cmd>TroubleToggle lsp_workspace_diagnostics<CR>')
nmap('<leader>ttd', '<cmd>TroubleToggle lsp_document_diagnostics<CR>')
nmap('<leader>tq', '<cmd>TroubleToggle quickfix<CR>')
nmap('<leader>tl', '<cmd>TroubleToggle loclist<CR>')
nmap('gR', '<cmd>TroubleToggle lsp_references<CR>')

-- Zen
nmap('<leader>z', '<cmd>ZenMode<CR>')

-- Cheat.nvim
nmap('<leader>sh', '<cmd>lua require("cheat.entry").query()<CR>')

vim.cmd([[
  imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
]])
