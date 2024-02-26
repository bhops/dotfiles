return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			local opts = { noremap = true, silent = true }
			dapui.setup({})

			dap.set_log_level("TRACE")

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.after.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			vim.g.dap_virtual_text = true

			vim.keymap.set("n", "<Leader>da", "<CMD>lua require('dap').continue()<CR>", opts)
			vim.keymap.set("n", "<Leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>", opts)
			vim.keymap.set("n", "<Leader>dc", "<CMD>lua require('dap').continue()<CR>", opts)
			vim.keymap.set("n", "<Leader>dd", "<CMD>lua require('dap').continue()<CR>", opts)
			vim.keymap.set("n", "<Leader>dh", "<CMD>lua require('dapui').eval()<CR>", opts)
			vim.keymap.set("n", "<Leader>di", "<CMD>lua require('dap').step_into()<CR>", opts)
			vim.keymap.set("n", "<Leader>do", "<CMD>lua require('dap').step_out()<CR>", opts)
			vim.keymap.set("n", "<Leader>dO", "<CMD>lua require('dap').step_over()<CR>", opts)
			vim.keymap.set("n", "<Leader>dt", "<CMD>lua require('dap').terminate()<CR>", opts)
			vim.keymap.set("n", "<Leader>dU", "<CMD>lua require('dapui').open()<CR>", opts)
			vim.keymap.set("n", "<Leader>dC", "<CMD>lua require('dapui').close()<CR>", opts)

			vim.keymap.set(
				"n",
				"<Leader>dw",
				"<CMD>lua require('dapui').float_element('watches', { enter = true })<CR>",
				opts
			)
			vim.keymap.set(
				"n",
				"<Leader>ds",
				"<CMD>lua require('dapui').float_element('scopes', { enter = true })<CR>",
				opts
			)
			vim.keymap.set(
				"n",
				"<Leader>ds",
				"<CMD>lua require('dapui').float_element('repl', { enter = true })<CR>",
				opts
			)
		end,
	},
	{
		"leoluz/nvim-dap-go",
		config = function()
			require("dap-go").setup({})
		end,
	},
	{
		"theHamsta/nvim-dap-virtual-text",
	},
}
