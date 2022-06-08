local opt = vim.opt
local g = vim.g

opt.title = true
opt.clipboard = "unnamedplus"
opt.cmdheight = 1
opt.cul = true
opt.swapfile = false
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true

opt.fillchars = {eob = " "}

opt.hidden = true
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.ruler = false

opt.shortmess:append "sI"
opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 8
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true
opt.updatetime = 250
opt.whichwrap:append "<>[]hl"

local disabled_built_ins = {
    "2html_plugin", "getscript", "getscriptPlugin", "gzip", "logipat", "netrw",
    "netrwPlugin", "netrwSettings", "netrwFileHandlers", "matchit", "tar",
    "tarPlugin", "rrhelper", "spellfile_plugin", "vimball", "vimballPlugin",
    "zip", "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do g["loaded_" .. plugin] = 1 end
