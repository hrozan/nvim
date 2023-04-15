-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<cr>')
vim.keymap.set('n', '<F4>', '<cmd>RustDebuggables<cr>', { desc = 'RustDebuggables' })
vim.keymap.set('n', '<C-z>', '<cmd>undo<cr>', { desc = 'Undo' })
vim.keymap.set('n', '<C-S-z>', '<cmd>redo<cr>', { desc = 'Redo' })
vim.keymap.set('n', '<A-f>', '<cmd>FormatWrite<cr>', { desc = 'Formater' })

vim.keymap.set('n', '<F5>', function()
  require('dap').toggle_breakpoint()
end, { desc = 'Toggle Breakpoint' })

vim.keymap.set('n', '<F9>', function()
  require('dap').continue()
end, { desc = 'Continue' })

vim.keymap.set('n', '<F8>', function()
  require('dap').step_over()
end, { desc = 'Step Over' })

vim.keymap.set('n', '<F7>', function()
  require('dap').step_into()
end, { desc = 'Step Into' })

vim.keymap.set('n', '<F6>', function()
  require('dap').step_out()
end, { desc = 'Step Out' })

vim.keymap.set('n', '<F2>', function()
  require('dapui').toggle()
end, { desc = 'Toggle Debugger UI' })

vim.keymap.set('n', '<F10>', function()
  require('dap').run_last()
end, { desc = 'Run Last' })
