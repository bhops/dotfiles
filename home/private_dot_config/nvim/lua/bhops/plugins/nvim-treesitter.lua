return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter.configs")
			treesitter.setup({
				highlight = { enable = true },
				indent = { enable = true },
				ensure_installed = {
					"go",
					"hcl",
					"http",
					"json",
					"lua",
					"rust",
					"toml",
					"vim",
					"yaml",
				},
			})
		end,
	},
}
