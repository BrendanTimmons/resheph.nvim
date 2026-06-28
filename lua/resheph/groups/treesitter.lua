local colors = require("resheph.palette")

local M = {}

function M.apply()
  local p = colors.palette

  -- Treesitter highlight groups using all 6 syntax colors
  vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.c09 })
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.c03 })
  vim.api.nvim_set_hl(0, "@comment.todo", { link = "@comment" })
  vim.api.nvim_set_hl(0, "@comment.hack", { link = "@comment" })
  vim.api.nvim_set_hl(0, "@comment.xxx", { link = "@comment" })

  -- Core syntax roles
  vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
  vim.api.nvim_set_hl(0, "@constant.builtin", { link = "@Constant" })
  vim.api.nvim_set_hl(0, "@constant.macro", { link = "@Constant" })
  vim.api.nvim_set_hl(0, "@number", { link = "@String" })
  vim.api.nvim_set_hl(0, "@boolean", { link = "@String" })
  vim.api.nvim_set_hl(0, "@string", { link = "String" })
  vim.api.nvim_set_hl(0, "@string.documentation", { link = "@String" })
  vim.api.nvim_set_hl(0, "@string.regex", { link = "@String" })
  vim.api.nvim_set_hl(0, "@string.escape", { link = "@String" })
  vim.api.nvim_set_hl(0, "@string.special", { link = "@String" })
  vim.api.nvim_set_hl(0, "@character", { fg = p.c05 })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.c05 })

  vim.api.nvim_set_hl(0, "@type", { link = "Type" })
  vim.api.nvim_set_hl(0, "@type.builtin", { link = "@type" })
  vim.api.nvim_set_hl(0, "@type.definition", { link = "@type" })
  vim.api.nvim_set_hl(0, "@type.qualifier", { link = "@type" })

  vim.api.nvim_set_hl(0, "@function", { link = "Function" })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.debug })
  vim.api.nvim_set_hl(0, "@function.call", { link = "@function" })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@method", { fg = p.debug })
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.debug })
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.c07 })

  vim.api.nvim_set_hl(0, "@variable", { fg = p.c03 })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.c15 })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.c15 })
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.c15 })

  vim.api.nvim_set_hl(0, "@property", { fg = p.c11 })
  vim.api.nvim_set_hl(0, "@field", { fg = p.debug })

  vim.api.nvim_set_hl(0, "@keyword", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.c07 })

  vim.api.nvim_set_hl(0, "@operator", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.c05 })

  -- Markup (for markdown, etc.)
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.c07, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.c07, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.c08, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.c07, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.c11, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.c12, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.c02 })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.c10, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.c13 })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.c13, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.c07 })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.c10 })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.c09 })

  -- Tags (HTML/XML: <div>, <Header>, <p>, <MyComponent>)
  vim.api.nvim_set_hl(0, "@tag", { fg = p.c07 })           -- div, header, main, MyComponent
  vim.api.nvim_set_hl(0, "@tag.builtin", { fg = p.c07 })   -- div, header, main, MyComponent
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.c07 }) -- className, id, href, onClick
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.c07 }) -- < > </ />

  -- Attributes (@decorators, [attributes], #[derive])
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.c07 }) -- @Component, @override, [Serializable]

  -- Labels (goto labels, break/continue labels)
  vim.api.nvim_set_hl(0, "@label", { fg = p.c09 }) -- label:, break label

  -- Namespace (std::, React., namespace MyNamespace)
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.c01 }) -- std, React, System
  vim.api.nvim_set_hl(0, "@module", { fg = p.c01 })    -- import * from 'module'

  -- Preproc
  vim.api.nvim_set_hl(0, "@preproc", { fg = p.debug })

  -- Include
  vim.api.nvim_set_hl(0, "@include", { fg = p.debug })

  -- Define
  vim.api.nvim_set_hl(0, "@define", { fg = p.debug })

  -- Conditional
  vim.api.nvim_set_hl(0, "@conditional", { fg = p.debug })

  -- Repeat
  vim.api.nvim_set_hl(0, "@repeat", { fg = p.debug })

  -- Exception
  vim.api.nvim_set_hl(0, "@exception", { fg = p.debug })

  -- Special characters
  vim.api.nvim_set_hl(0, "@character.printf", { fg = p.debug })

  -- Diff (git diff colors: +added, -removed, ~modified)
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.c10 })  -- + added lines
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.c09 }) -- - removed lines
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.c12 }) -- ~ modified lines

  -- Language-specific
  -- Lua
  vim.api.nvim_set_hl(0, "@function.builtin.lua", { fg = p.c12 })
  vim.api.nvim_set_hl(0, "@variable.builtin.lua", { fg = p.c11, })
  vim.api.nvim_set_hl(0, "@variable.member.lua", { fg = p.c11, })

  -- rust
  vim.api.nvim_set_hl(0, "@keyword.modifier.rust", { fg = p.c07 })

  -- JavaScript/TypeScript
  vim.api.nvim_set_hl(0, "@function.builtin.javascript", { fg = p.debug })
  vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { fg = p.debug })
end

return M
