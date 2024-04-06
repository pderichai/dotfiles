return {
	"neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- test
    keys[#keys + 1] = { "gd", function() require("telescope.builtin").lsp_definitions() end }
  end,
	opts = {
		servers = {
			sorbet = {
				root_dir = function()
					local LspconfigUtil = require("lspconfig.util")
					if vim.fn.getcwd() == "/Users/dpang/figma/figma" then
						return "/Users/dpang/figma/figma/sinatra"
					else
						return LspconfigUtil.root_pattern("Gemfile", ".git")()
          end
        end,
			},
		},
	},
}
