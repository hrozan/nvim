return {
  { 'mxsdev/nvim-dap-vscode-js' },
  { 'theHamsta/nvim-dap-virtual-text', config = true },
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'
      vim.fn.sign_define('DapBreakpoint', { text = '🔘', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapStopped', { text = '⚪', texthl = '', linehl = '', numhl = '' })

      -- C/C++
      dap.adapters.codelldb = {
        type = 'server',
        port = '${port}',
        executable = {
          command = 'codelldb',
          args = { '--port', '${port}' },
        },
      }

      dap.configurations.c = {
        {
          name = 'Launch file',
          port = 13000,
          type = 'codelldb',
          request = 'launch',
          program = function() return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file') end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
        },
      }
      dap.configurations.cpp = dap.configurations.c

      -- Javascript / Typescript
      require('dap-vscode-js').setup {
        debugger_path = vim.fn.stdpath 'data' .. '/mason/packages/js-debug-adapter',
        debugger_cmd = { 'js-debug-adapter' },
        adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
      }

      for _, language in ipairs { 'typescript', 'javascript' } do
        dap.configurations[language] = {
          {
            name = 'Launch',
            type = 'pwa-node',
            request = 'launch',
            program = '${file}',
            rootPath = '${workspaceFolder}',
            cwd = '${workspaceFolder}',
            sourceMaps = true,
            skipFiles = { '<node_internals>/**' },
            protocol = 'inspector',
            console = 'integratedTerminal',
          },
        }
      end
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      local dap, dapui = require 'dap', require 'dapui'
      dap.listeners.after.event_initialized['dapui_config'] = function() dapui.open() end
      dap.listeners.before.event_terminated['dapui_config'] = function() dapui.close() end
      dap.listeners.before.event_exited['dapui_config'] = function() dapui.close() end

      dapui.setup()
    end,
  },
}
