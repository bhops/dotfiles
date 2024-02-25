vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- Disable arrow keys
local noop = function() end
keymap.set("n", "<Up>", noop)
keymap.set("n", "<Down>", noop)
keymap.set("n", "<Left>", noop)
keymap.set("n", "<Right>", noop)

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
