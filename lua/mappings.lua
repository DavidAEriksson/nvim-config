vim.cmd('noremap <C-b> :noh<cr>:call clearmatches()<cr>') -- clear matches Ctrl+b

function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

-- I hate escape more than anything else
imap('jk', '<Esc>')
imap('kj', '<Esc>')

-- Tab to next S-Tab to prev buf
nmap('<TAB>', ':bnext')
nmap('<S-TAB>', ':bprevious')

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
imap('C-j', '<esc>:m .+1<CR>==')
imap('C-k', '<esc>:m .-2<CR>==')
nmap('<leader>j', '<esc>:m .+1<CR>==')
nmap('<leader>k', '<esc>:m .-2<CR>==')

-- LSP
nmap('gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nmap('gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nmap('gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nmap('gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nmap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
nmap('<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nmap('<C-n>', '<cmd>lua vim.lsp.buf.diagnostic.goto_prev()<CR>')
nmap('<C-p>', '<cmd>lua vim.lsp.buf.diagnostic.goto_next()<CR>')
nmap('<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
nmap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
nmap('<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
nmap('<leader>td', '<cmd>lua vim.lsp.buf.type_definition()<CR>')

-- Harpoon
nmap('<leader>ha', "<cmd> lua require('harpoon.mark').add_file()<CR>")
nmap('<leader>htm', "<cmd> lua require('harpoon.mark').toggle_quick_menu()<CR>")
nmap('<leader>h1', "<cmd> lua require('harpoon.ui').nav_file(1)<CR>")
nmap('<leader>h2', "<cmd> lua require('harpoon.ui').nav_file(2)<CR>")
nmap('<leader>h3', "<cmd> lua require('harpoon.ui').nav_file(3)<CR>")
nmap('<leader>h4', "<cmd> lua require('harpoon.ui').nav_file(4)<CR>")

-- NerdTree
nmap('<leader>e', ':NERDTreeToggle<CR>')

-- Telescope
nmap('<S-f>', ':Telescope find_files<CR>')
nmap('<leader>rg', ':Telescope live_grep<CR>')
nmap('<leader>fb', ':Telescope buffers<CR>')
nmap('<leader>fh', ':Telescope help_tags<CR>')

-- Omnisharp tests
nmap('<leader>ot',':OmniSharpRunTest<CR>')
nmap('<leader>otf',':OmniSharpRunTestsInFile<CR>')

-- Copilot
vim.cmd([[
	imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
	let g:copilot_no_tab_map = v:true
]])

-- Terminal
nmap('<leader>ter', '<cmd>:terminal<CR>')

-- Trouble in paradize
nmap('<leader>tt', '<cmd>TroubleToggle<CR>')
nmap('<leader>tw', '<cmd>TroubleToggle lsp_workspace_diagnostics<CR>')
nmap('<leader>td', '<cmd>TroubleToggle lsp_document_diagnostics<CR>')
nmap('<leader>tq', '<cmd>TroubleToggle quickfix<CR>')
nmap('<leader>tl', '<cmd>TroubleToggle loclist<CR>')
nmap('gR', '<cmd>TroubleToggle lsp_references<CR>')
