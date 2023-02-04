return {
  {
    "folke/tokyonight.nvim",
    disabled = true,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
    },
    config = function()
      vim.cmd([[colorscheme catppuccin-macchiato]])
    end,
  },
}
