local function map(mode, shortcut, command)
	local opt = {
		noremap = true,
		silent = true,
	}
	vim.api.nvim_set_keymap(mode, shortcut, command, opt)
end

map("", "<A-0>", "<cmd>lua require'utils'.ToggleNumbers()<cr>")
map("", "<A-f>", "<cmd>Format<cr>")
map("", "<A-1>", "<cmd>NvimTreeToggle<cr>")
map("", "<A-2>", "<cmd>ToggleTerm<cr>")
map("", "<A-3>", "<cmd>Trouble<cr>")
map("", "<A-4>", "<cmd>Luadev<cr>")

map("v", "p", '"_dP')
map("n", "<Esc>", "<cmd>noh <cr>")
map("n", "Y", "yg$")
map("", "<A-q>", "<cmd>bd<cr>")
map("", "<C-q>", "<cmd>wq!<cr>")
map("", "<C-s>", ":wa<cr>")
map("n", "U", "<cmd>redo<cr>")
map("n", "<C-z>", "<cmd>undo<cr>")
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<C-a>", ":%y+ <cr>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

map("n", "<C-P>", ":PackerSync<cr>")
map("n", "gr", ":Gitsigns reset_hunk<cr>")

map("n", "gt", ":BufferLineCycleNext<cr>")
map("n", "gT", ":BufferLineCyclePrev<cr>")
map("n", "gy", ":BufferLinePick<cr>")
map("n", "gx", ":BufferLinePickClose<cr>")

map(
	"n",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
)
map(
	"n",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
)
map(
	"o",
	"f",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
)
map(
	"o",
	"F",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
)
map(
	"",
	"t",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
)
map(
	"",
	"T",
	"<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
)
map("n", "fw", ":HopWord <cr>")
