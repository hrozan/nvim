return {
  { 'norcalli/nvim-colorizer.lua', config = true },
  { 'ellisonleao/glow.nvim', config = true, cmd = 'Glow' },
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
}
