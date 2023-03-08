return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        'tsx',
        'typescript',
        'c_sharp',
      })
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = true,
  },
}
