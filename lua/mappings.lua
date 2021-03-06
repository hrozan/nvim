local map = function(mode, key, command)
  vim.api.nvim_set_keymap(mode, key, command, { noremap = true, silent = true })
end

local nmap = function(key, command)
  map('n', key, command)
end

require 'edit.find'

map('n', 'gt', ':BufferLineCycleNext<cr>')
map('n', 'gT', ':BufferLineCyclePrev<cr>')
map('n', 'gy', ':BufferLinePick<cr>')
map('n', 'gx', ':BufferLinePickClose<cr>')

map('n', 'f', ':lua require("edit.find").nf()<cr>')
map('n', 'F', ':lua require("edit.find").nF()<cr>')
map('n', 'fw', ':HopWord <cr>')

map('n', '<Esc>', ':noh<cr>')
map('t', '<Esc>', '<C-\\><C-n>')

map('n', '<A-0>', ':setlocal spell!<cr>')
map('n', '<A-1>', ':NvimTreeToggle<cr>')
map('n', '<A-2>', ':Telescope find_files<cr>')
map('n', '<A-3>', ':ToggleTerm<cr>')
map('n', '<A-4>', ':TroubleToggle<cr>')
map('n', '<A-f>', ':Format<cr>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-a>', ':%y+ <cr>')
map('n', '<C-q>', ':wqa<cr>')
map('n', '<C-s>', ':wa<cr>')
map('n', '<C-z>', ':undo<cr>')
map('n', '<C-p>', ':PackerCompile<cr>')
map('n', '<C-f>', ':Telescope live_grep<cr>')
nmap('<C-S-b>', ':Gitsigns blame_line')
