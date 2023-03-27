return {
  { 'mxsdev/nvim-dap-vscode-js' },
  {
    'mfussenegger/nvim-dap',
    keys = {
      { '<A-9>', '<cmd>DapContinue<cr>', desc = 'Dap Continue' },
    },
    config = function()
      local dap = require 'dap'

      -- setup adapters
      require('dap-vscode-js').setup {
        debugger_path = vim.fn.stdpath 'data' .. '/mason/packages/js-debug-adapter',
        debugger_cmd = { 'js-debug-adapter' },
        adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
      }

      -- custom adapter for running tasks before starting debug
      local custom_adapter = 'pwa-node-custom'
      dap.adapters[custom_adapter] = function(cb, config)
        if config.preLaunchTask then
          local async = require 'plenary.async'
          local notify = require('notify').async

          async.run(function()
            ---@diagnostic disable-next-line: missing-parameter
            notify('Running [' .. config.preLaunchTask .. ']').events.close()
          end, function()
            vim.fn.system(config.preLaunchTask)
            config.type = 'pwa-node'
            dap.run(config)
          end)
        end
      end

      -- language config
      dap.configurations.typescript = {
        {
          type = 'pwa-node',
          request = 'launch',
          name = 'Launch file',
          program = '${file}',
          cwd = '${workspaceFolder}',
          runtimeExecutable = './node_modules/.bin/tsx',
        },
        {
          type = 'pwa-node',
          runtimeExecutable = 'tsx',
          request = 'launch',
          name = 'Debug Jest Tests',
          -- trace = true, -- include debugger info
          runtimeArgs = {
            './node_modules/jest/bin/jest.js',
            '--runInBand',
          },
          rootPath = '${workspaceFolder}',
          cwd = '${workspaceFolder}',
          console = 'integratedTerminal',
          internalConsoleOptions = 'neverOpen',
        },
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    config = function()
      local dap, dapui = require 'dap', require 'dapui'
      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited['dapui_config'] = function()
        dapui.close()
      end

      dapui.setup()
    end,
  },
}
