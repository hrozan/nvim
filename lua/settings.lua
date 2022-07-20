vim.g.material_style = "deep ocean"
vim.o.guifont = "JetBrainsMonoMedium Nerd Font:h12"
vim.o.number = true
vim.o.numberwidth = 2
vim.o.relativenumber = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.mouse = "a"
vim.o.undofile = true
vim.o.spelllang = "pt_br,en"
vim.o.clipboard = "unnamedplus"
vim.o.cmdheight = 1
vim.o.shiftwidth = 4
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.ruler = false
vim.o.signcolumn = "yes"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.tabstop = 8

vim.opt.shortmess:append("sI")
vim.opt.whichwrap:append("<>[]hl")
vim.opt.fillchars = { eob = " " }


vim.cmd("colorscheme material")
