return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},

	opts = {
		pickers = {
			find_files = {
				-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
				find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		local builtin = require("telescope.builtin")
		local keymap = vim.keymap

		telescope.load_extension("fzf")

		keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "Find recently opened files" })
		keymap.set("n", "<leader>/", function()
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] Fuzzy search in current buffer" })
		keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Search Git Files" })
		keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search Files" })
		keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search Help" })
		keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "Search Current Word" })
		keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search Grep" })
		keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "Search Diagnostics" })
	end,
}
