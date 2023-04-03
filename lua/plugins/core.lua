return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
  {
    'rcarriga/nvim-notify',
    keys = {
      {
        '<A-l>',
        function()
          require('notify').dismiss { silent = true, pending = true }
        end,
        desc = 'Delete all Notifications',
      },
    },
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    keys = {
      { '<A-1>', '<cmd>Neotree toggle<cr>', desc = 'Neotree Toggle' },
    },
    opts = {
      close_if_last_window = true,
      window = {
        position = 'right',
        width = 45,
      },
    },
  },
}
