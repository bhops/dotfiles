return {
  {
    "simrat39/rust-tools.nvim",
    opts = {
      server = {
        on_attach = function(_, bufnr)
          local rt = require("rust-tools")
          -- Hover actions
          vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
          -- Code action groups
          vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })

          rt.inlay_hints.enable()
        end,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "simrat39/inlay-hints.nvim",
    },
    opts = {
      servers = {
        tsserver = {},
        bashls = {},
        dockerls = {},
        gopls = {
          on_attach = function(c, b)
            local ih = require("inlay-hints")
            ih.on_attach(c, b)
          end,
          settings = {
            gopls = {
              hints = {
                constantValues = true,
              },
            },
          },
        },
        jsonls = {},
        yamlls = {},
        lua_ls = {},
        vimls = {},
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "luacheck",
        "shellcheck",
        "shfmt",
        "black",
        "flake8",
        "isort",
      },
    },
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          -- nls.builtins.formatting.prettierd,
          nls.builtins.formatting.stylua,
          nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.isort,
          nls.builtins.formatting.black,
        },
      }
    end,
  },
}
