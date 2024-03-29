return {
  { 'antoinemadec/FixCursorHold.nvim', config = function() vim.cmd 'let g:cursorhold_updatetime = 100' end },
  { 'nvim-neotest/neotest-jest' },
  { 'rouge8/neotest-rust' },
  { 'nvim-neotest/neotest-python' },
  { 'Issafalcon/neotest-dotnet' },
  {
    'nvim-neotest/neotest',
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-jest' {},
          require 'neotest-python' {},
          require 'neotest-dotnet' {},
          require 'neotest-rust',
        },
      }
    end,
  },
}
