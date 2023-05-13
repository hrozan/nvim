return {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'json-lsp',
        'lua-language-server',
        'prettier',
        'shfmt',
        'stylua',
      },
    },
  },
}
