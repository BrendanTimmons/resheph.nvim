local M = {}

function M.setup()
  -- Load the main colors
  require("resheph.groups.editor").apply()
end

function M.snacks()
  require("resheph.groups.snacks").apply()
end

function M.whichkey()
  require("resheph.groups.whichkey").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M
