local M = {}
function M.setup()
  local formatters = require("lvim.lsp.null-ls.formatters")
  formatters.setup({
    {
      exe = ".stylua",
    },
  })
end

return M
