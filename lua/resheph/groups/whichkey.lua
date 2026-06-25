local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p = colors.palette

  vim.api.nvim_set_hl(0, "WhichKey", { fg = p.color4, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = p.fg1, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconGrey", { fg = p.fg3, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconAzure", { fg = p.color2, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconPurple", { fg = p.color3, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconGreen", { fg = p.color6, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconCyan", { fg = p.fg2, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconRed", { fg = p.color1, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconOrange", { fg = p.color4, bg = p.none })
  vim.api.nvim_set_hl(0, "WhichKeyIconYellow", { fg = p.color4, bg = p.none })
end

return M
