local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("d.lsp.lsp-installer")
require("d.lsp.handlers").setup()
