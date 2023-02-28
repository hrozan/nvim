local opt = vim.o

-- Enables the clipboard between Neovim and other applications
opt.clipboard = 'unnamedplus'

-- Highlights the current line in the editor
opt.cursorline = true

-- Modifies the auto-complete menu to behave more like an IDE
opt.completeopt = 'noinsert,menuone,noselect'

-- Hide unused buffers
opt.hidden = true

-- Allows the use of the mouse in the editor
opt.mouse = 'a'

-- Shows line numbers
opt.number = true

-- Show line numbers starting from the current one
opt.relativenumber = true

-- Set the default width size of line numbers
opt.numberwidth = 2

-- Number of spaces to use for each step of (auto)indent
opt.shiftwidth = 2

-- Do smart autoindenting when starting a new line.
opt.smartindent = true

-- When on, Vim automatically saves undo history to an undo file when writing a buffer to a file,
-- and restores undo history from the same file on buffer read.
opt.undofile = true

-- When on spell checking will be done 
opt.spell = true
opt.spelllang = 'pt_br,en'

vim.o.cmdheight = 1
vim.o.shiftwidth = 4
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.ruler = false
vim.o.signcolumn = 'yes'
vim.o.splitbelow = true
vim.o.splitright = true
vim.g.mapleader = " " 


-- Set font for Neovide
vim.o.guifont = 'CaskaydiaCove Nerd Font:h13'
