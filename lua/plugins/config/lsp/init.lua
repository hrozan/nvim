local lsp = require('lspconfig')
local on_attach = require('plugins.config.lsp.on_attach')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
   properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
   },
}
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
  on_attach = on_attach
}

-- Yaml
lsp.yamlls.setup{
  on_attach = on_attach
}

-- JSON
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp.jsonls.setup{
  capabilities = capabilities,
  on_attach = on_attach
}

-- Docker
lsp.dockerls.setup{
  on_attach = on_attach
}

-- Emmet
lsp.emmet_ls.setup{
  filetypes = { "html", "css", "vue" }
}




