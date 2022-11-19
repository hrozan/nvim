local lspconfig = require'lspconfig'

vim.diagnostic.config { virtual_text = false }

local opt = {
  noremap = true,
  silent = true,
}
local function on_attach(_, bufnr)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', ':lua vim.lsp.buf.definition()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', ':lua vim.lsp.buf.implementation()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', ':lua vim.lsp.buf.declaration()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', ':lua vim.lsp.buf.references()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', ':lua vim.diagnostic.goto_prev()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', ':lua vim.diagnostic.goto_next()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', ':lua vim.lsp.buf.hover()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'kt', ':lua vim.lsp.buf.type_definition()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'rn', ':lua vim.lsp.buf.rename()<cr>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ca', ':lua vim.lsp.buf.code_action()<cr>', opt)
end

local servers = {
  'sumneko_lua',
  'yamlls',
  'bashls',
  'jsonls',
  'taplo',
}

for _, s in pairs(servers) do
  lspconfig[s].setup {
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
