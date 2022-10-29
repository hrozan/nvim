local util = require 'formatter.util'
require('formatter').setup {
  filetype = {
    markdown = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    typescript = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    typescriptreact = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    json = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    yaml = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    javascript = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    vue = {
      function()
        return {
          exe = 'prettier',
          args = { '--stdin-filepath', vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
          stdin = true,
        }
      end,
    },
    lua = {
      function()
        return {
          exe = 'stylua',
          args = {
            '--search-parent-directories',
            '--stdin-filepath',
            util.escape_path(util.get_current_buffer_file_path()),
            '--',
            '-',
          },
          stdin = true,
        }
      end,
    },
  },
}
