return {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'json-lsp',
        'lua-language-server',
        'prettier',
        'stylua',
        'dockerfile-language-server',
        'powershell-editor-services',
        'yaml-language-server',
        'yamlfmt',
      },
    },
  },
}
