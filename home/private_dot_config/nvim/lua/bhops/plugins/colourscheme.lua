return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000, -- load before other plugins
	config = function()
		vim.cmd.colorscheme("everforest")
	end,
}
