local function map(mode, shortcut, command)
    local opt = {noremap = true, silent = true}
    vim.api.nvim_set_keymap(mode, shortcut, command, opt)
end

-- Neovim
map("v", "p", "\"_dP")
map("n", "<Esc>", "<cmd>noh <cr>")
map("n", "Y", "yg$")
map("", "<C-q>", "<cmd>bd<cr>")
map("", "<A-q>", "<cmd>wqa!<cr>")
map("", "<C-s>", ":wa<cr>")
map("n", "U", "<cmd>redo<cr>")
map("t", "<Esc>", "<C-\\><C-n>")
-- copy whole file content
map("n", "<C-a>", ":%y+ <cr>")
-- easier navigation between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Packer
map("n", "<C-P>", ":PackerSync<cr>")

-- GitSingh
map("n", "gr", ":Gitsigns reset_hunk<cr>")

-- Formatter
map("n", "<A-f>", ":Format<cr>")

-- Tree
map("", "<A-1>", ":NvimTreeToggle<cr>")

-- Telescope
map("", "<A-2>", ":Telescope find_files<cr>")

-- Trouble
map("", "<A-3>", "<cmd>Trouble<cr>")

-- Bufferline
map("n", "gt", ":BufferLineCycleNext<cr>")
map("n", "gT", ":BufferLineCyclePrev<cr>")
map("n", "gy", ":BufferLinePick<cr>")
map("n", "gx", ":BufferLinePickClose<cr>")

-- Hop
map("n", "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map("n", "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map("o", "f",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>")
map("o", "F",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>")
map("", "t",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map("", "T",
    "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map("n", "fw", ":HopWord <cr>")
