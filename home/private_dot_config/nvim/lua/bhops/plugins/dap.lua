return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			local opts = { noremap = true, silent = true }
			dapui.setup({
				layouts = {
					{
						elements = {
							{
								id = "scopes",
								size = 0.25,
							},
							{
								id = "breakpoints",
								size = 0.25,
							},
							{
								id = "stacks",
								size = 0.25,
							},
							{
								id = "watches",
								size = 0.25,
							},
						},
						position = "left",
						size = 40,
					},
				},
			})

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

			opts.desc = "[Debugger] Toggle Breakpoint"
			vim.keymap.set("n", "<Leader>db", "<CMD>lua require('dap').toggle_breakpoint()<CR>", opts)

			opts.desc = "[Debugger] Continue"
			vim.keymap.set("n", "<Leader>dc", "<CMD>lua require('dap').continue()<CR>", opts)

			opts.desc = "[Debugger] Eval"
			vim.keymap.set("n", "<Leader>dh", "<CMD>lua require('dapui').eval()<CR>", opts)

			opts.desc = "[Debugger] Step Into"
			vim.keymap.set("n", "<Leader>di", "<CMD>lua require('dap').step_into()<CR>", opts)

			opts.desc = "[Debugger] Step Out"
			vim.keymap.set("n", "<Leader>do", "<CMD>lua require('dap').step_out()<CR>", opts)

			opts.desc = "[Debugger] Step Over"
			vim.keymap.set("n", "<Leader>dO", "<CMD>lua require('dap').step_over()<CR>", opts)

			opts.desc = "[Debugger] Terminate"
			vim.keymap.set("n", "<Leader>dt", "<CMD>lua require('dap').terminate()<CR>", opts)

			opts.desc = "[Debugger] Open"
			vim.keymap.set("n", "<Leader>dU", "<CMD>lua require('dapui').open()<CR>", opts)

			opts.desc = "[Debugger] Close"
			vim.keymap.set("n", "<Leader>dC", "<CMD>lua require('dapui').close()<CR>", opts)

			opts.desc = "[Debugger] Watches"
			vim.keymap.set(
				"n",
				"<Leader>dw",
				"<CMD>lua require('dapui').float_element('watches', { enter = true })<CR>",
				opts
			)

			opts.desc = "[Debugger] Scopes"
			vim.keymap.set(
				"n",
				"<Leader>dS",
				"<CMD>lua require('dapui').float_element('scopes', { enter = true })<CR>",
				opts
			)

			opts.desc = "[Debugger] REPL"
			vim.keymap.set(
				"n",
				"<Leader>dr",
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
