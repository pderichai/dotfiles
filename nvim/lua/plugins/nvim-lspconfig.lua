return {
	"neovim/nvim-lspconfig",
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
