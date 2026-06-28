local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p = colors.palette

  -- Dashboard
  vim.api.nvim_set_hl(0, "OilFile", { fg = p.c02 })
  vim.api.nvim_set_hl(0, "OilDirHidden", { fg = p.c08 })
end

return M
