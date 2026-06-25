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
  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.none })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg1, bg = p.fg2 })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "SignColumn", { fg = p.comment })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
  -- Syntax groups using all 6 colors logically:
  vim.api.nvim_set_hl(0, "Statement", { fg = p.color1 })  -- Statements, error, danger
  vim.api.nvim_set_hl(0, "Keyword", { fg = p.color2 })    -- Keywords, control flow
  vim.api.nvim_set_hl(0, "Operator", { fg = p.gold })     -- Operators
  vim.api.nvim_set_hl(0, "Constant", { fg = p.color3 })   -- Constants, numbers, enums
  vim.api.nvim_set_hl(0, "Number", { fg = p.brown })      -- Numbers
  vim.api.nvim_set_hl(0, "Boolean", { fg = p.brown })     -- Booleans
  vim.api.nvim_set_hl(0, "Type", { fg = p.color4 })       -- Types, classes
  vim.api.nvim_set_hl(0, "Structure", { fg = p.color4 })  -- Structs, interfaces
  vim.api.nvim_set_hl(0, "Class", { fg = p.color4 })      -- Classes
  vim.api.nvim_set_hl(0, "String", { fg = p.color5 })     -- Strings, regex, docstrings
  vim.api.nvim_set_hl(0, "Special", { fg = p.color5 })    -- Special strings, regex
  vim.api.nvim_set_hl(0, "Function", { fg = p.color6 })   -- Functions, methods
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.color6 }) -- Identifiers, builtins
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.color2 })    -- Preprocessor, macros
  vim.api.nvim_set_hl(0, "Underlined", { fg = p.color4, underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.color3, bg = p.bg1, bold = true })

  -- Essential UI elements for better readability
  vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 })                              -- Line numbers in subtle gray
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.color4, bold = true })        -- Current line number highlighted
  vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg })              -- Selection highlighting
  vim.api.nvim_set_hl(0, "MatchParen", { fg = p.fg0, bg = p.color3 })           -- Matching Parenthesis
  vim.api.nvim_set_hl(0, "Search", { fg = p.fg0, bg = p.color3 })               -- Search highlighting
  vim.api.nvim_set_hl(0, "CurSearch", { fg = p.fg0, bg = p.color4 })            -- Search highlighting
  vim.api.nvim_set_hl(0, "IncSearch", { fg = p.fg0, bg = p.dark_magenta })      -- Incremental search
  vim.api.nvim_set_hl(0, "Substitute", { link = "CurSearch" })                  -- Substitute search term
  vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 })              -- Status line
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 })            -- Inactive status line
  vim.api.nvim_set_hl(0, "VertSplit", { fg = p.bg2 })                           -- Window splits
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.bg2 })                        -- Modern window separators
  vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg2 })                 -- Tab line
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 })                         -- Tab line fill
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true }) -- Selected tab

  -- Popup menus for better completion readability
  vim.api.nvim_set_hl(0, "Pmenu", { link = "NormalFloat" })         -- Popup menu
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.color4, bg = p.bg2 }) -- Selected popup item
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.color1 })            -- Popup scrollbar
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 })              -- Popup scrollbar thumb
  vim.api.nvim_set_hl(0, "PmenuBorder", { link = "FloatBorder" })

  -- Error and warning highlights
  vim.api.nvim_set_hl(0, "Error", { fg = p.color1, bold = true })      -- Error text
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.color1, bold = true })   -- Error messages
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.color2, bold = true }) -- Warning messages
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 })                    -- Mode messages

  -- Floats
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = p.none, fg = p.fg1 })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = p.none, fg = p.bg2 })
  vim.api.nvim_set_hl(0, "FloatTitle", { bg = p.none, fg = p.bg2 })
  vim.api.nvim_set_hl(0, "FloatShadow", {})
  vim.api.nvim_set_hl(0, "FloatShadowThrough", {})

  -- Files
  vim.api.nvim_set_hl(0, "Directory", { fg = p.comment })

  -- ???
  vim.api.nvim_set_hl(0, "Conceal", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "Whitespace", { fg = p.color1 })

  -- apply theming
  require("resheph.groups.treesitter").apply()
  require("resheph.groups.diagnostics").apply()
  require("resheph.groups.snacks").apply()
  require("resheph.groups.whichkey").apply()
end

return M
