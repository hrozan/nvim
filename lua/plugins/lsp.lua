return {
  {
    'neovim/nvim-lspconfig',
    init = function()
      local keys = require('lazyvim.plugins.lsp.keymaps').get()
      keys[#keys + 1] = { '<C-space>', vim.lsp.buf.code_action }
    end,
  },
  { 'simrat39/rust-tools.nvim', config = true },
}
