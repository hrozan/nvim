local lspconfig = require'lspconfig'
local lspconfig_configs = require'lspconfig.configs'
local lspconfig_util = require 'lspconfig.util'

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

local function on_new_config(new_config, new_root_dir)
  local function get_typescript_server_path(root_dir)
    local project_root = lspconfig_util.find_node_modules_ancestor(root_dir)
    return project_root and (lspconfig_util.path.join(project_root, 'node_modules', 'typescript', 'lib', 'tsserverlibrary.js'))
      or ''
  end

  if
    new_config.init_options
    and new_config.init_options.typescript
    and new_config.init_options.typescript.serverPath == ''
  then
    new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
  end
end

local volar_cmd = {'vue-language-server', '--stdio'}
local volar_root_dir = lspconfig_util.root_pattern 'package.json'

lspconfig_configs.volar_api = {
  default_config = {
    cmd = volar_cmd,
    root_dir = volar_root_dir,
    on_new_config = on_new_config,
    filetypes = { 'vue'},
    -- If you want to use Volar's Take Over Mode (if you know, you know)
    --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
    init_options = {
      typescript = {
        serverPath = ''
      },
      languageFeatures = {
        implementation = true, -- new in @volar/vue-language-server v0.33
        references = true,
        definition = true,
        typeDefinition = true,
        callHierarchy = true,
        hover = true,
        rename = true,
        renameFileRefactoring = true,
        signatureHelp = true,
        codeAction = true,
        workspaceSymbol = true,
        completion = {
          defaultTagNameCase = 'both',
          defaultAttrNameCase = 'kebabCase',
          getDocumentNameCasesRequest = false,
          getDocumentSelectionRequest = false,
        },
      }
    },
  }
}
lspconfig.volar_api.setup{}

lspconfig_configs.volar_doc = {
  default_config = {
    cmd = volar_cmd,
    root_dir = volar_root_dir,
    on_new_config = on_new_config,

    filetypes = { 'vue'},
    -- If you want to use Volar's Take Over Mode (if you know, you know):
    --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
    init_options = {
      typescript = {
        serverPath = ''
      },
      languageFeatures = {
        implementation = true, -- new in @volar/vue-language-server v0.33
        documentHighlight = true,
        documentLink = true,
        codeLens = { showReferencesNotification = true},
        -- not supported - https://github.com/neovim/neovim/pull/15723
        semanticTokens = false,
        diagnostics = true,
        schemaRequestService = true,
      }
    },
  }
}
lspconfig.volar_doc.setup{}

lspconfig_configs.volar_html = {
  default_config = {
    cmd = volar_cmd,
    root_dir = volar_root_dir,
    on_new_config = on_new_config,

    filetypes = { 'vue'},
    -- If you want to use Volar's Take Over Mode (if you know, you know), intentionally no 'json':
    --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    init_options = {
      typescript = {
        serverPath = ''
      },
      documentFeatures = {
        selectionRange = true,
        foldingRange = true,
        linkedEditingRange = true,
        documentSymbol = true,
        -- not supported - https://github.com/neovim/neovim/pull/13654
        documentColor = false,
        documentFormatting = {
          defaultPrintWidth = 100,
        },
      }
    },
  }
}
lspconfig.volar_html.setup{}

lspconfig.omnisharp.setup {
  cmd = { 'dotnet', '/usr/lib/omnisharp-roslyn/OmniSharp.dll' },
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 },
}

local servers = {
  'sumneko_lua',
  'yamlls',
  'bashls',
  'jsonls',
  'tsserver',
  'dockerls',
  'clangd',
  'rust_analyzer',
  'taplo',
  'emmet_ls',
  'pyright',
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
