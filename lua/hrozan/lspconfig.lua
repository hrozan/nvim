local lsp = require("lspconfig")
local signature = require("lsp_signature")

-- Change diagnostic icon
vim.diagnostic.config({virtual_text = false})

-- Define mappings
local on_attach = function(_, bufnr)
    local function map(mode, shortcut, command)
        local opt = {noremap = true, silent = true}
        vim.api.nvim_buf_set_keymap(bufnr, mode, shortcut, command, opt)
    end

    signature.on_attach()
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Go To
    map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")
    map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
    map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")
    map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
    map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
    map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")

    -- Docs
    map("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
    map("n", "kt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")

    -- Rename
    map("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>")

    -- Code Action
    map("n", "<C-space>", "<cmd>lua vim.lsp.buf.code_action()<cr>")
end

-- Change tips icons
local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
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
    "clangd", "sumneko_lua", "ltex"
}

for _, s in pairs(servers) do
    lsp[s].setup {
        capabilities = capabilities,
        on_attach = on_attach,
        flags = {debounce_text_changes = 150},
    }
end
