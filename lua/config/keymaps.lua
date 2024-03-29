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

map.set('n', '<A-t>', function() require('neotest').run.run() end, { desc = 'Neotest run' })
map.set('n', '<A-S-t>', function()
  if vim.bo.filetype == 'cs' then
    require('neotest').run.run {
      strategy = require 'neotest-dotnet.strategies.netcoredbg',
      is_custom_dotnet_debug = true,
    }
  else
    require('neotest').run.run { strategy = 'dap' }
  end
end, { desc = 'Neotest run' })

map.set('n', '<A-f>', '<cmd>FormatWrite<cr>', { desc = 'Formatter' })
map.set('n', '<C-b>', '<cmd>CMakeRun<cr>', { desc = 'CMakeRun' })
map.set(
  'n',
  '<C-n>',
  function() require('notify').dismiss { silent = true, pending = true } end,
  { desc = 'Delete all Notifications' }
)

map.set('n', '<F2>', '<cmd>CMakeDebug<cr>', { desc = 'CMakeDebug' })
map.set('n', '<F3>', '<cmd>RustDebuggables<cr>', { desc = 'RustDebuggables' })
map.set('n', '<F4>', '<cmd>DapContinue<cr>', { desc = 'Dap Continue' })
map.set('n', '<F5>', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle Breakpoint' })
map.set('n', '<F9>', function() require('dap').continue() end, { desc = 'Continue' })
map.set('n', '<F8>', function() require('dap').step_over() end, { desc = 'Step Over' })
map.set('n', '<F7>', function() require('dap').step_into() end, { desc = 'Step Into' })
map.set('n', '<F6>', function() require('dap').step_out() end, { desc = 'Step Out' })
map.set('n', '<F10>', function() require('dap').run_last() end, { desc = 'Run Last' })
