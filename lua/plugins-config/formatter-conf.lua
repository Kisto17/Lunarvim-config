local M = {}
function M.setup ()
  local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    ---@usage arguments to pass to the formatter
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact", "lua" },
  },
}
end
return M
