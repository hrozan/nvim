return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    opts = {
      close_if_last_window = true,
      window = {
        position = 'right',
        width = 45,
      },
    },
  },
  {
    'linrongbin16/lsp-progress.nvim',
    config = true,
  },
  { 'rcarriga/nvim-notify', enabled = false },
}
