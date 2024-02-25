return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
		},
		on_attach = function(bufnr)
			vim.keymap.set(
				"n",
				"<leader>gp",
				require("gitsigns").prev_hunk,
				{ buffer = bufnr, desc = "Go to Previous Hunk" }
			)
			vim.keymap.set(
				"n",
				"<leader>gn",
				require("gitsigns").next_hunk,
				{ buffer = bufnr, desc = "Go to Next Hunk" }
			)
			vim.keymap.set(
				"n",
				"<leader>ph",
				require("gitsigns").preview_hunk,
				{ buffer = bufnr, desc = "Preview Hunk" }
			)
		end,
	},
}
