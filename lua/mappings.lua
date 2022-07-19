local function map(mode, shortcut, command)
	local opt = {
		noremap = true,
		silent = true,
	}
	vim.api.nvim_set_keymap(mode, shortcut, command, opt)
end

function HopNf()
	require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true })
end

function HopNF()
	require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true })
end

function HopOf()
	require("hop").hint_char1({
		direction = require("hop.hint").HintDirection.AFTER_CURSOR,
		current_line_only = true,
		inclusive_jump = true,
	})
end

function HopOF()
	require("hop").hint_char1({
		direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
		current_line_only = true,
		inclusive_jump = true,
	})
end

map("v", "p", '"_dP')
map("n", "Y", "yg$")
map("n", "U", ":redo<cr>")
map("n", "<Esc>", ":noh<cr>")
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<A-1>", ":NvimTreeToggle<cr>")
map("n", "<A-6>", ":Trouble<cr>")
map("n", "<A-f>", ":Format<cr>")
map("n", "<C-q>", ":wq!<cr>")
map("n", "<C-s>", ":wa<cr>")
map("n", "<C-a>", ":%y+ <cr>")
map("n", "<C-n>", ":Telescope find_files<cr>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-z>", ":undo<cr>")
map("n", "<C-p>", ":PackerCompile<cr>")
map("n", "gt", ":BufferLineCycleNext<cr>")
map("n", "gT", ":BufferLineCyclePrev<cr>")
map("n", "gy", ":BufferLinePick<cr>")
map("n", "gx", ":BufferLinePickClose<cr>")
map("n", "f", ":lua HopNf()<cr>")
map("n", "F", ":lua HopNF() <cr>")
map("o", "f", ":lua HopOf()<cr>")
map("o", "F", ":lua HopOF<cr>")
map("n", "fw", ":HopWord <cr>")
