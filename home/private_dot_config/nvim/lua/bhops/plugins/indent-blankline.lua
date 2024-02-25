return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		indent = {
			char = "┊",
		},
		exclude = {
			filetypes = {
				"help",
				"alpha",
				"lazy",
				"mason",
				"notify",
			},
			buftypes = {
				"terminal",
				"nofile",
				"quickfix",
				"prompt",
				"help",
				"lazy",
				"",
			},
		},
	},
}
