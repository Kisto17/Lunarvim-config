local M = {}
function M.setup()
	local formatters = require("lvim.lsp.null-ls.formatters")
	formatters.setup({
		{
			exe = ".stylua",
		},
		{
			command = "prettier",
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"vue",
				"css",
				"scss",
				"less",
				"html",
				"json",
				"jsonc",
				"yaml",
				"markdown",
				"graphql",
				"handlebars",
			},
		},
	})
end

return M
