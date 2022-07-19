-- Author: Higor Rozan
-- higorb.rozan@hotmail.com
require("plugins")
require("mappings")

vim.g.material_style = "deep ocean"
vim.o.guifont = "JetBrainsMonoMedium Nerd Font:h13"
vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.mouse = "a"
vim.o.undofile = true

vim.cmd("colorscheme material")
