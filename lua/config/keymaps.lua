-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap

map.set('n', '<C-z>', '<cmd>undo<cr>', { desc = 'Undo' })
map.set('n', '<C-S-z>', '<cmd>redo<cr>', { desc = 'Redo' })
map.set('n', '<A-1>', '<cmd>Neotree toggle<cr>', { desc = 'Neotree Toggle' })
map.set('n', '<A-2>', '<cmd>ToggleTerm<cr>', { desc = 'ToggleTerm' })
map.set('n', '<A-3>', '<cmd>TroubleToggle<cr>', { desc = 'TroubleToggle' })
map.set('n', '<A-4>', '<cmd>Glow<cr>', { desc = 'Glow' })

map.set(
  'n',
  '<C-n>',
  function() require('notify').dismiss { silent = true, pending = true } end,
  { desc = 'Delete all Notifications' }
)
