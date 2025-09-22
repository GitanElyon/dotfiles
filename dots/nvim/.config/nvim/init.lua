
-- basic nvim settings
vim.opt.number = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.opt.splitright = true
vim.g.mapleader = " "

require("config.lazy")


require("telescope").load_extension("ui-select")
