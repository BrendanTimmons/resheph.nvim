local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p = colors.palette

  -- Dashboard
  vim.api.nvim_set_hl(0, "SnacksDashboard", { fg = p.c07, bg = p.c00 })
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = p.c03, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = p.c07, italic = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = p.c10, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = p.c12, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardFile", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksDashboardDir", { fg = p.c08 })
  vim.api.nvim_set_hl(0, "SnacksDashboardRecentFiles", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "SnacksDashboardShortcut", { fg = p.c11 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminal", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalBorder", { fg = p.c08 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalTitle", { fg = p.c08, bold = true })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInput", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputBorder", { fg = p.c08 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearch", { fg = p.c11 })
  vim.api.nvim_set_hl(0, "SnacksDashboardTerminalInputSearchBorder", { fg = p.c08 })

  -- Picker
  vim.api.nvim_set_hl(0, "SnacksPicker", { bg = p.c00, fg = p.c02 })
  vim.api.nvim_set_hl(0, "SnacksPickerBorder", { link = "FloatBorder" })
  vim.api.nvim_set_hl(0, "SnacksPickerTitle", { link = "FloatTitle" })
  vim.api.nvim_set_hl(0, "SnacksPickerDim", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksPickerDir", { link = "SnacksPickerDim" })

  vim.api.nvim_set_hl(0, "SnacksPickerIcon", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "SnacksPickerIconDir", { fg = p.c08 })
  vim.api.nvim_set_hl(0, "SnacksPickerIconFile", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = p.c11, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerCursor", { fg = p.debug, bg = p.c08 })
  vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { fg = p.c11, bg = p.c08, bold = true })
  vim.api.nvim_set_hl(0, "SnacksPickerTotals", { fg = p.c11 })

  vim.api.nvim_set_hl(0, "SnacksPickerPreview", { link = "NormalFloat" })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { link = "SnacksPickerBorder" })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { link = "SnacksPickerTitle" })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewCursorLine", { link = "SnacksPickerCursorLine" })

  vim.api.nvim_set_hl(0, "SnacksPickerList", { link = "SnacksPicker" })
  vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { link = "SnacksPickerBorder" })
  vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { link = "SnacksPickerTitle" })
  vim.api.nvim_set_hl(0, "SnacksPickerListCursorLine", { link = "SnacksPickerCursorLine" })

  vim.api.nvim_set_hl(0, "SnacksPickerInput", { link = "NormalFloat" })
  vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { link = "SnacksPickerBorder" })
  vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = p.c07, bg = p.debug })

  vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { link = "SnacksPickerBorder" })

  -- Notifier
  vim.api.nvim_set_hl(0, "SnacksNotifier", { fg = p.c07, bg = p.debug })
  vim.api.nvim_set_hl(0, "SnacksNotifierBorder", { fg = p.uic1, bg = p.debug })
  vim.api.nvim_set_hl(0, "SnacksNotifierTitle", { fg = p.color2, bold = true })
  vim.api.nvim_set_hl(0, "SnacksNotifierIcon", { fg = p.color4 })
  vim.api.nvim_set_hl(0, "SnacksNotifierBody", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksNotifierInfo", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "SnacksNotifierWarn", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "SnacksNotifierError", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "SnacksNotifierDebug", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "SnacksNotifierTrace", { fg = p.color6 })

  -- Terminal
  vim.api.nvim_set_hl(0, "SnacksTerminal", { fg = p.c07, bg = p.c00 })
  vim.api.nvim_set_hl(0, "SnacksTerminalBorder", { fg = p.c08, bg = p.c00 })
  vim.api.nvim_set_hl(0, "SnacksTerminalTitle", { fg = p.c11, bg = p.c00, bold = true })

  -- Input
  vim.api.nvim_set_hl(0, "SnacksInput", { fg = p.c15, bg = p.debug })
  vim.api.nvim_set_hl(0, "SnacksInputBorder", { fg = p.debug, bg = p.debug })
  vim.api.nvim_set_hl(0, "SnacksInputTitle", { fg = p.debug, bg = p.debug, bold = true })
  vim.api.nvim_set_hl(0, "SnacksInputIcon", { fg = p.debug })

  -- Indent
  vim.api.nvim_set_hl(0, "SnacksIndent", { fg = p.debug })
  vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = p.color6 })

  -- Explorer
  vim.api.nvim_set_hl(0, "SnacksExplorer", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksExplorerBorder", { fg = p.uic1, bg = p.none })
  vim.api.nvim_set_hl(0, "SnacksExplorerTitle", { fg = p.color2, bg = p.bg, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerDir", { fg = p.color3, bold = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerLink", { fg = p.color5, underline = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerIcon", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconDir", { fg = p.color3 })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconFile", { fg = p.fg })
  vim.api.nvim_set_hl(0, "SnacksExplorerIconLink", { fg = p.color5, underline = true })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitAdded", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitModified", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitDeleted", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "SnacksExplorerGitIgnocolor1", { fg = p.uic1 })

  -- Scroll
  vim.api.nvim_set_hl(0, "SnacksScroll", { fg = p.color6, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksScrollThumb", { bg = p.uic1 })

  -- Zen mode
  vim.api.nvim_set_hl(0, "SnacksZen", { fg = p.fg, bg = p.bg })

  -- Words (LSP references)
  vim.api.nvim_set_hl(0, "SnacksWords", { bg = p.debug, underline = true })

  -- Dim (inactive code)
  vim.api.nvim_set_hl(0, "SnacksDim", { fg = p.uic1 })

  -- Scratch
  vim.api.nvim_set_hl(0, "SnacksScratch", { fg = p.fg, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchBorder", { fg = p.uic1, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksScratchTitle", { fg = p.color4, bg = p.bg, bold = true })

  -- Statuscolumn
  vim.api.nvim_set_hl(0, "SnacksStatusColumn", { fg = p.uic1, bg = p.bg })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnNumber", { fg = p.uic1 })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnRelNumber", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitAdd", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitChange", { fg = p.color2 })
  vim.api.nvim_set_hl(0, "SnacksStatusColumnGitDelete", { fg = p.color1 })
end

return M
