return {
	"echasnovski/mini.files",
	version = "*",
	setup = function()
		require("mini.files").setup()
	end,
	keys = {
		{
			"<leader><space>",
			function()
				require("mini.files").open()
			end,
			mode = "",
			desc = "Open mini.files",
		},
	},
}
