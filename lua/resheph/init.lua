local M = {}

function M.setup()
  local groups = {
    require('resheph/groups/editor'),
    require('resheph/groups/treesitter'),
    require('resheph/groups/diagnostics')
  }

  for _, highlight_group in ipairs(groups) do
    for group, opts in pairs(highlight_group.highlights()) do
      vim.api.nvim_set_hl(0, group, opts)
    end
  end
end

return M
