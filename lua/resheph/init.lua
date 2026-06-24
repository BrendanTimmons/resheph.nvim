local M = {}

function M.setup()
  -- Load the main colors
  require("resheph.groups.editor").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M
