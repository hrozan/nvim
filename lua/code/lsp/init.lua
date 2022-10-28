local lsp = require 'lspconfig'

local servers = {
  'tsserver', -- Node
  'rust_analyzer', -- Rust
  'clangd', -- C/C++
  'sumneko_lua', -- Lua
  'yamlls',
  'jsonls',
  'bashls',
  'dockerls',
}

vim.diagnostic.config { virtual_text = false }

local function on_attach(_, bufnr)
  local opt = {
    noremap = true,
    silent = true,
  }
  local lsp_map = vim.api.nvim_buf_set_key
  lsp_map(bufnr, 'n', 'gd', ':lua vim.lsp.buf.definition()<cr>', opt)
  lsp_map(bufnr, 'n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', opt)
  lsp_map(bufnr, 'n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', opt)
  lsp_map(bufnr, 'n', 'gr', ':lua vim.lsp.buf.references()<cr>', opt)
  lsp_map(bufnr, 'n', '[d', ':lua vim.diagnostic.goto_prev()<cr>', opt)
  lsp_map(bufnr, 'n', ']d', ':lua vim.diagnostic.goto_next()<cr>', opt)
  lsp_map(bufnr, 'n', 'K', ':lua vim.lsp.buf.hover()<cr>', opt)
  lsp_map(bufnr, 'n', 'kt', ':lua vim.lsp.buf.type_definition()<cr>', opt)
  lsp_map(bufnr, 'n', 'rn', ':lua vim.lsp.buf.rename()<cr>', opt)
  lsp_map(bufnr, 'n', '<C-S-a>', ':lua vim.lsp.buf.code_action()<cr>', opt)
end

for _, s in pairs(servers) do
  lsp[s].setup {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    on_attach = on_attach,
    flags = { debounce_text_changes = 150 },
  }
end

local signs = {
  Error = ' ',
  Warn = ' ',
  Hint = ' ',
  Info = ' ',
}

for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, {
    text = icon,
    texthl = hl,
    numhl = hl,
  })
end
