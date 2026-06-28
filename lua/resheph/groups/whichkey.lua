local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p = colors.palette

  vim.api.nvim_set_hl(0, "WhichKey", { fg = p.c10, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = p.c07, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconGrey", { fg = p.c07, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconAzure", { fg = p.c06, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconPurple", { fg = p.c13, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconGreen", { fg = p.c10, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconCyan", { fg = p.c14, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconRed", { fg = p.c09, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconOrange", { fg = p.c03, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconYellow", { fg = p.c11, bg = p.none })
end

return M
