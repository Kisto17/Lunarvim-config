local components = require("lvim.core.lualine.components")
local M ={}
function M.setup()
  lvim.builtin.lualine.options.theme = "palenight"
  lvim.builtin.lualine.sections ={
    lualine_a = {
      components.mode,
    },
    lualine_b = {
      components.branch,
      components.filename,
      components.location,
    },
    lualine_c = {
      components.diff,
    },
    lualine_x = {
      components.diagnostics,
      components.treesitter,
      components.lsp,
      components.filetype,
    },
  }
  end
return M
