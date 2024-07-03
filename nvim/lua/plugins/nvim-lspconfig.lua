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
    setup = {
      pyright = function()
        local function set_python_path(path)
				  local LspconfigUtil = require("lspconfig.util")
          local clients = LspconfigUtil.get_lsp_clients {
            bufnr = vim.api.nvim_get_current_buf(),
            name = 'pyright',
          }
          for _, client in ipairs(clients) do
            if client.settings then
              client.settings.python = vim.tbl_deep_extend('force', client.settings.python, { pythonPath = path })
            else
              client.config.settings = vim.tbl_deep_extend('force', client.config.settings, { python = { pythonPath = path } })
            end
            client.notify('workspace/didChangeConfiguration', { settings = nil })
          end
        end

        if vim.fn.getcwd() == "/Users/dpang/figma/figma/ml" then
          set_python_path("~/figma/figma/ml/py/.dev_venv/bin/python")
        end
      end,
    }
	},
}
