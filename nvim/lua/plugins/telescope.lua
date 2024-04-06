local Util = require("lazyvim.util")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
      config = function()
        Util.on_load("telescope.nvim", function()
          require("telescope").load_extension("live_grep_args")
        end)
      end,
    },
  },
  keys = {
    { "<leader><space>", false },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
    {
      "<leader>sG",
      '<cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<cr>',
      desc = "Grep (args)",
    },
  },
  opts = function()
    local actions = require("telescope.actions")

    return {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
    }
  end,
}
