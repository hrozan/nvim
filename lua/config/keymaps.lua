-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap

map.set('n', '<C-z>', '<cmd>undo<cr>', { desc = 'Undo' })
map.set('n', '<C-S-z>', '<cmd>redo<cr>', { desc = 'Redo' })

map.set('n', '<A-1>', '<cmd>Neotree toggle<cr>', { desc = 'Neotree Toggle' })
map.set('n', '<A-2>', '<cmd>ToggleTerm<cr>', { desc = 'ToggleTerm' })
map.set('n', '<A-3>', '<cmd>TroubleToggle<cr>', { desc = 'TroubleToggle' })
map.set('n', '<A-4>', function() require('dapui').toggle() end, { desc = 'Toggle Debugger UI' })

map.set('n', '<F3>', '<cmd>DapContinue<cr>', { desc = 'Dap Continue' })
map.set('n', '<F4>', '<cmd>RustDebuggables<cr>', { desc = 'RustDebuggables' })
map.set('n', '<F5>', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle Breakpoint' })
map.set('n', '<F9>', function() require('dap').continue() end, { desc = 'Continue' })
map.set('n', '<F8>', function() require('dap').step_over() end, { desc = 'Step Over' })
map.set('n', '<F7>', function() require('dap').step_into() end, { desc = 'Step Into' })
map.set('n', '<F6>', function() require('dap').step_out() end, { desc = 'Step Out' })
map.set('n', '<F10>', function() require('dap').run_last() end, { desc = 'Run Last' })
