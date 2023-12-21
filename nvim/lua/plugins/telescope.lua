return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader><space>", false },
  },
  opts = function()
    local actions = require("telescope.actions")

    return {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-g>"] = actions.close,
          },
          n = {
            ["<C-g>"] = actions.close,
          },
        },
      },
    }
  end,
}
