local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p = colors.palette

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "resheph"

  -- Basic highlight groups
  vim.api.nvim_set_hl(0, "Normal", { fg = p.c15, bg = p.c00 })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.cursorline })
  vim.api.nvim_set_hl(0, "Cursor", { fg = p.c14, bg = p.c00 })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.c08 })
  vim.api.nvim_set_hl(0, "SignColumn", { fg = p.c08 })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.c06 })

  -- Syntax groups using all 6 colors logically:
  vim.api.nvim_set_hl(0, "Statement", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "Keyword", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "Operator", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "Constant", { fg = p.c13 })
  vim.api.nvim_set_hl(0, "Number", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "Boolean", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "Type", { fg = p.c14 })
  vim.api.nvim_set_hl(0, "Structure", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "Class", { fg = p.c03 })
  vim.api.nvim_set_hl(0, "String", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "Special", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "Function", { fg = p.c12 })
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.c07, underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.c07, bg = p.c02, bold = true })

  -- Essential UI elements for better readability
  vim.api.nvim_set_hl(0, "LineNr", { fg = p.c08 })                              -- Line numbers in subtle gray
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.c11, bold = true })           -- Current line number highlighted
  vim.api.nvim_set_hl(0, "Visual", { bg = p.c08, fg = p.c11 })                  -- Selection highlighting
  vim.api.nvim_set_hl(0, "MatchParen", { link = "Visual" })                     -- Matching Parenthesis
  vim.api.nvim_set_hl(0, "Search", { link = "Visual" })                         -- Search highlighting
  vim.api.nvim_set_hl(0, "CurSearch", { fg = p.c15, bg = p.c13 })               -- Search highlighting
  vim.api.nvim_set_hl(0, "IncSearch", { link = "CurSearch" })                   -- Incremental search
  vim.api.nvim_set_hl(0, "Substitute", { link = "CurSearch" })                  -- Substitute search term
  vim.api.nvim_set_hl(0, "StatusLine", { fg = p.c11, bg = p.c08 })              -- Status line
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.c07, bg = p.c08 })            -- Inactive status line
  vim.api.nvim_set_hl(0, "VertSplit", { fg = p.debug })                         -- Window splits
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.c08 })                        -- Modern window separators
  vim.api.nvim_set_hl(0, "TabLine", { fg = p.c07, bg = p.c00 })                 -- Tab line
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.c00 })                         -- Tab line fill
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.c00, bg = p.c11, bold = true }) -- Selected tab

  -- Popup menus for better completion readability
  vim.api.nvim_set_hl(0, "Pmenu", { link = "NormalFloat" })      -- Popup menu
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.c03, bg = p.c08 }) -- Selected popup item
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.c08 })            -- Popup scrollbar
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.c08 })           -- Popup scrollbar thumb
  vim.api.nvim_set_hl(0, "PmenuBorder", { link = "FloatBorder" })

  -- Error and warning highlights
  vim.api.nvim_set_hl(0, "Error", { fg = p.c01, bold = true }) -- Error text
  vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })       -- Error messages
  vim.api.nvim_set_hl(0, "WarningMsg", { link = "Error" })     -- Warning messages
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.debug })          -- Mode messages

  -- Floats
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = p.c00, fg = p.c07 })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = p.c00, fg = p.c08 })
  vim.api.nvim_set_hl(0, "FloatTitle", { bg = p.c00, fg = p.c11 })
  vim.api.nvim_set_hl(0, "FloatShadow", {})
  vim.api.nvim_set_hl(0, "FloatShadowThrough", {})

  -- Files
  vim.api.nvim_set_hl(0, "Directory", { fg = p.c07 })

  -- Git
  vim.api.nvim_set_hl(0, "Removed", { fg = p.c09 })
  vim.api.nvim_set_hl(0, "Added", { fg = p.c10 })

  -- ???
  vim.api.nvim_set_hl(0, "Conceal", { fg = p.debug })
  vim.api.nvim_set_hl(0, "Whitespace", { fg = p.debug })
  vim.api.nvim_set_hl(0, "NonText", { fg = p.c08 })

  -- apply theming
  require("resheph.groups.treesitter").apply()
  require("resheph.groups.diagnostics").apply()
  require("resheph.groups.snacks").apply()
  require("resheph.groups.oil").apply()
  require("resheph.groups.whichkey").apply()
end

return M
