local pid = vim.fn.getpid()

local omnisharp_bin = "/usr/local/opt/omnisharp-mono/libexec/OmniSharp.exe"

require'lspconfig'.omnisharp.setup{
  cmd = {omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)};
}
