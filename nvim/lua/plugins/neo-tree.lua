return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd(), reveal = true })
      end,
      desc = "Explorer NeoTree (Curr File)",
    },
  },
  opts = {
    window = {
      position = "float",
    },
  },
}
