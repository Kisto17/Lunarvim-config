local M = {}
function M.setup ()
  require"flutter-tools".setup {
    widget_guides = {
      enabled = true,
    },
    closing_tags = {
      enabled = true,
    }
  }
end
return M
