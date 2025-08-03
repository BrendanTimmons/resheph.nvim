local M = {}

M.highlights = function()
  local color = require("resheph/palette")

  local error = color.red
  local warning = color.dark_orange
  local info = color.dark_cyan
  local hint = color.cyan
  local ok = color.green

  return {
    LspReferenceText = { bg = color.cyan, fg = color.bg },  -- used for highlighting "text" references
    LspReferenceRead = { bg = color.cyan, fg = color.bg },  -- used for highlighting "read" references
    LspReferenceWrite = { bg = color.cyan, fg = color.bg }, -- used for highlighting "write" references

    DiagnosticVirtualTextError = { bg = color.none, fg = color.red, },
    DiagnosticVirtualTextWarn = { bg = color.none, fg = color.dark_orange, },
    DiagnosticVirtualTextInfo = { bg = color.none, fg = color.dark_cyan, },
    DiagnosticVirtualTextHint = { bg = color.none, fg = color.grey, },
    DiagnosticVirtualTextOk = { bg = color.none, fg = color.green, }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

    DiagnosticError = { bg = color.none, fg = error },                -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { bg = color.none, fg = warning },               -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { bg = color.none, fg = info },                  -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { bg = color.none, fg = hint },                  -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
    DiagnosticOk = { bg = color.none, fg = ok },                      -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

    DiagnosticUnderlineError = { sp = error },                        -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { sp = warning },                       -- Used to underline "Warn" diagnostics
    DiagnosticUnderlineInfo = { sp = info },                          -- Used to underline "Info" diagnostics
    DiagnosticUnderlineHint = { sp = hint },                          -- Used to underline "Hint" diagnostics
    DiagnosticUnderlineOk = { sp = ok },                              -- Used to underline "Ok" diagnostics

    DiagnosticFloatingError = { fg = error },                         -- Used to color "Error" diagnostic messages in diagnostics float
    DiagnosticFloatingWarn = { fg = warning },                        -- Used to color "Warn" diagnostic messages in diagnostics float
    DiagnosticFloatingInfo = { fg = info },                           -- Used to color "Info" diagnostic messages in diagnostics float
    DiagnosticFloatingHint = { fg = hint },                           -- Used to color "Hint" diagnostic messages in diagnostics float
    DiagnosticFloatingOk = { fg = ok },                               -- Used to color "Ok" diagnostic messages in diagnostics float

    DiagnosticSignError = { fg = error },                             -- Used for "Error" signs in sign column
    DiagnosticSignWarn = { fg = warning },                            -- Used for "Warn" signs in sign column
    DiagnosticSignInfo = { fg = info },                               -- Used for "Info" signs in sign column
    DiagnosticSignHint = { fg = hint },                               -- Used for "Hint" signs in sign column
    DiagnosticSignOk = { fg = ok },                                   -- Used for "Ok" signs in sign column

    LspDiagnosticsDefaultError = { fg = error },                      -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning = { fg = warning },                  -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation = { fg = info },                 -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint = { fg = hint },                        -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspSignatureActiveParameter = { bg = color.grey },

    LspDiagnosticsError = { fg = error },
    LspDiagnosticsWarning = { fg = warning },
    LspDiagnosticsInformation = { fg = info },
    LspDiagnosticsHint = { fg = hint },
    LspDiagnosticsVirtualTextError = { fg = error },           -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = { fg = warning },       -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { fg = info },      -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = { fg = hint },             -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError = { sp = error },             -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = { sp = warning },         -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = { sp = info },        -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = { sp = hint },               -- Used to underline "Hint" diagnostics
    LspCodeLens = { fg = color.overlay0 },                     -- virtual text of the codelens
    LspCodeLensSeparator = { link = "LspCodeLens" },           -- virtual text of the codelens separators
    LspInlayHint = { fg = color.grey, bg = color.dark_grey, }, -- virtual text of the inlay hints
    LspInfoBorder = { link = "FloatBorder" },                  -- LspInfo border
  }
end

return M
