return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		local opts = { noremap = true, silent = true }
		local on_attach = function(_, bufnr)
			opts.buffer = bufnr

			opts.desc = "Show LSP references"
			keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

			opts.desc = "LSP Rename"
			keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

			opts.desc = "LSP Code Actions"
			keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

			opts.desc = "Go to Definition"
			keymap.set("n", "gd", vim.lsp.buf.definition, opts)

			opts.desc = "Go to Implementation"
			keymap.set("n", "gI", vim.lsp.buf.implementation, opts)

			opts.desc = "Go to Type Definition"
			keymap.set("n", "<leader>gT", vim.lsp.buf.type_definition, opts)

			opts.desc = "Document Symbols"
			keymap.set("n", "<leader>ds", "<cmd> Telescope lsp_document_symbols<CR>", opts)

			opts.desc = "Workspace Symbols"
			keymap.set("n", "<leader>ws", "<cmd> Telescope lsp_workspace_symbols<CR>", opts)

			opts.desc = "Hover Documentation"
			keymap.set("n", "K", vim.lsp.buf.hover, opts)

			opts.desc = "Signature Documentation"
			keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		lspconfig["bashls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["gopls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			cmd = { "gopls", "serve" },
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
				},
			},
		})

		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						global = { "vim" },
					},
					telemetry = { enable = false },
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.stdpath("config") .. "/lua"] = true,
						},
					},
				},
			},
		})

		lspconfig["terraformls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		lspconfig["rust_analyzer"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				rust_analyzer = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
						},
					},
				},
			},
		})

		lspconfig["yamlls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end,
}
