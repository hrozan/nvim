return {
  { 'theHamsta/nvim-dap-virtual-text', config = true },
  {
    'mfussenegger/nvim-dap-python',
    config = function() require('dap-python').setup '~/.virtualenvs/debugpy/bin/python' end,
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'
      vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = '', linehl = '', numhl = '' })
      vim.fn.sign_define('DapStopped', { text = '🔵', texthl = '', linehl = '', numhl = '' })

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

      -- Dotnet
      vim.g.dotnet_build_project = function()
        local default_path = vim.fn.getcwd() .. '/'
        if vim.g['dotnet_last_proj_path'] ~= nil then
          default_path = vim.g['dotnet_last_proj_path']
        end
        local path = vim.fn.input('Path to your *proj file', default_path, 'file')
        vim.g['dotnet_last_proj_path'] = path
        local cmd = 'dotnet build -c Debug ' .. path .. ' > /dev/null'
        print ''
        print('Cmd to execute: ' .. cmd)
        local f = os.execute(cmd)
        if f == 0 then
          print '\nBuild: ✔️ '
        else
          print('\nBuild: ❌ (code: ' .. f .. ')')
        end
      end

      vim.g.dotnet_get_dll_path = function()
        local request = function() return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file') end

        if vim.g['dotnet_last_dll_path'] == nil then
          vim.g['dotnet_last_dll_path'] = request()
        else
          if
              vim.fn.confirm('Do you want to change the path to dll?\n' .. vim.g['dotnet_last_dll_path'], '&yes\n&no', 2)
              == 1
          then
            vim.g['dotnet_last_dll_path'] = request()
          end
        end

        return vim.g['dotnet_last_dll_path']
      end

      dap.adapters.netcoredbg = {
        type = 'executable',
        command = 'netcoredbg',
        args = { '--interpreter=vscode' },
      }

      local config = {
        {
          type = 'netcoredbg',
          name = 'launch - netcoredbg',
          request = 'launch',
          program = function()
            if vim.fn.confirm('Should I recompile first?', '&yes\n&no', 2) == 1 then
              vim.g.dotnet_build_project()
            end
            return vim.g.dotnet_get_dll_path()
          end,
        },
      }

      dap.configurations.cs = config
      dap.configurations.fsharp = config
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
