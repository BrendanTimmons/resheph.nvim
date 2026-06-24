local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p    = colors.palette

  local err  = p.color1
  local warn = p.comment
  local info = p.comment
  local hint = p.comment
  local ok   = p.color6

  -- LSP reference highlights
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = p.selbg, fg = p.selfg })
  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = p.selbg, fg = p.selfg })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = p.selbg, fg = p.selfg })

  -- Virtual text
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = p.none, fg = err })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = p.none, fg = warn })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = p.none, fg = info })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = p.none, fg = hint })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextOk", { bg = p.none, fg = ok })

  -- Diagnostic base groups
  vim.api.nvim_set_hl(0, "DiagnosticError", { bg = p.none, fg = err })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { bg = p.none, fg = warn })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { bg = p.none, fg = info })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { bg = p.none, fg = hint })
  vim.api.nvim_set_hl(0, "DiagnosticOk", { bg = p.none, fg = ok })

  -- Underline
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = err, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = warn, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = info, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = hint, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { sp = ok })

  -- Floating diagnostics
  vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = err })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = warn })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = info })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = hint })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingOk", { fg = ok })

  -- Sign column
  vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = err })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = warn })
  vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = info })
  vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = hint })
  vim.api.nvim_set_hl(0, "DiagnosticSignOk", { fg = ok })

  -- Legacy LSP diagnostic groups
  vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultError", { fg = err })
  vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultWarning", { fg = warn })
  vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultInformation", { fg = info })
  vim.api.nvim_set_hl(0, "LspDiagnosticsDefaultHint", { fg = hint })

  vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { bg = p.comment })

  vim.api.nvim_set_hl(0, "LspDiagnosticsError", { fg = err })
  vim.api.nvim_set_hl(0, "LspDiagnosticsWarning", { fg = warn })
  vim.api.nvim_set_hl(0, "LspDiagnosticsInformation", { fg = info })
  vim.api.nvim_set_hl(0, "LspDiagnosticsHint", { fg = hint })

  vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextError", { fg = err })
  vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextWarning", { fg = warn })
  vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextInformation", { fg = info })
  vim.api.nvim_set_hl(0, "LspDiagnosticsVirtualTextHint", { fg = hint })

  vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineError", { sp = err })
  vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineWarning", { sp = warn })
  vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineInformation", { sp = info })
  vim.api.nvim_set_hl(0, "LspDiagnosticsUnderlineHint", { sp = hint })

  -- LSP misc
  vim.api.nvim_set_hl(0, "LspCodeLens", { fg = p.color1 })
  vim.api.nvim_set_hl(0, "LspCodeLensSeparator", { link = "LspCodeLens" })
  vim.api.nvim_set_hl(0, "LspInlayHint", { fg = hint, bg = p.none })
  vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "FloatBorder" })
end

return M
