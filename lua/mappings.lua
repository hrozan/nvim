function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

map("v", "p", '"_dP')
map("n", "<Esc>", ":noh <CR>")
map("n", "Y", "yg$")

-- Quit
map('', '<C-q>', ':q<cr>')
map('', '<C-Q>', ':q!<cr>')
map('', '<C-s>', ':w<cr>')

-- Telescope
map("", "<leader>ff", ":Telescope find_files<cr>")
map("n", "<leader>fg", ":Telescope live_grep<cr>")
map("n", "<leader>fb", ":Telescope buffers<cr>")
map("n", "<leader>fh", ":Telescope help_tags<cr>")

-- Bufferline
map('', '<A-q>', ':bd<cr>')
map('n', 'gt', ':BufferLineCycleNext<cr>')
map('n', 'gT', ':BufferLineCyclePrev<cr>')

-- Tree
map('','<A-1>', ':NvimTreeFocus<cr>')
map('','<C-n>', ':NvimTreeToggle<cr>')

-- Hop
map('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>")
map('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>")
map('', 't', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>")
map('', 'T', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>")
map('n', 'fw', ":HopWord <cr>")

