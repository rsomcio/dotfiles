local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
    print("help")
	lsp_zero.default_keymaps({buffer = bufnr})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end)

require('mason').setup({
    log_level = vim.log.levels.DEBUG
})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here
	-- with the ones you want to install
	ensure_installed = {'tsserver', 'eslint', 'gopls', 'pylsp', 'lua_ls'},
	handlers = {
		lsp_zero.default_setup,
	}
})
