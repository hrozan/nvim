local lsp = require('lspconfig')
local capabilities = require('plugins.config.lsp.capabilities')
local on_attach = require('plugins.config.lsp.on_attach')

-- Go 
lsp.gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls", "serve"},
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  flags = {
    debounce_text_changes = 150,
  }
}

--- Typescript
lsp.tsserver.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- Yaml
lsp.yamlls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- JSON
lsp.jsonls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- Docker
lsp.dockerls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- Emmet
lsp.emmet_ls.setup{
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "html", "css", "vue" }
}




