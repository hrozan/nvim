local ok, lsp = pcall(require, "lspconfig")
if not ok then return end

local signature_ok, signature = pcall(require, "lsp_signature")
if not signature_ok then return end

-- Change diagnostic icon
vim.diagnostic.config({virtual_text = {prefix = "●"}})

-- Change tips icons
local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

-- Define mappings
local on_attach = function(_, bufnr)
    local opts = {noremap = true, silent = true}
    local function map(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    signature.on_attach()
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    -- map("n", "<C-K>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>",
        opts)
    map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",
        opts)
    map("n", "<leader>wl",
        "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
        opts)
    map("n", "<leader>d", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    map("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    map("n", "<C-space>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    map("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
    map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
    map("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
end

-- Load capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
local completionItem = capabilities.textDocument.completion.completionItem

completionItem.documentationFormat = {"markdown", "plaintext"}
completionItem.snippetSupport = true
completionItem.preselectSupport = true
completionItem.insertReplaceSupport = true
completionItem.labelDetailsSupport = true
completionItem.deprecatedSupport = true
completionItem.commitCharactersSupport = true
completionItem.tagSupport = {valueSet = {1}}
completionItem.resolveSupport = {
    properties = {"documentation", "detail", "additionalTextEdits"},
}

-- Load server
local servers = {
    "tsserver", "yamlls", "jsonls", "bashls", "dockerls", "rust_analyzer",
    "clangd", "volar", "sumneko_lua",
}

for _, s in pairs(servers) do
    lsp[s].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {debounce_text_changes = 150},
    }
end
