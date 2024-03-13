local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.signcolumn = "yes"

opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.autoindent = true -- copy indent from current line to next

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true

opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")

opt.scrolloff = 4
opt.sidescrolloff = 8

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false -- disable swapfile
opt.conceallevel = 1
