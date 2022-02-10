local ok, formatter = pcall(require, "formatter")
if not ok then
    return
end

formatter.setup{
  filetype = {
    javascript = {
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
          stdin = true
        }
      end
    },
    rust = {
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout"},
          stdin = true
        }
      end
    },
    json = {
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--double-quote"},
          stdin = true
        }
      end
    },
    lua = {
        function()
          return {
            exe = "lua-format",
            args = {
                "--extra-sep-at-table-end",
                "--single-quote-to-double-quote"
            },
            stdin = true
          }
        end
    },
  }
}
