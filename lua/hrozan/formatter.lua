local formatter = require("formatter")

formatter.setup {
    filetype = {
        typescript = {
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath",
                        vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                    },
                    stdin = true,
                }
            end,
        },
        typescriptreact = {
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath",
                        vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                    },
                    stdin = true,
                }
            end,
        },
        yaml = {
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath",
                        vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                    },
                    stdin = true,
                }
            end,
        },

        vue = {
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath",
                        vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                    },
                    stdin = true,
                }
            end,
        },

        json = {
            function()
                return {
                    exe = "prettier",
                    args = {
                        "--stdin-filepath",
                        vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
                        "--double-quote",
                    },
                    stdin = true,
                }
            end,
        },

        rust = {
            function()
                return {exe = "rustfmt", args = {"--emit=stdout"}, stdin = true}
            end,
        },

        lua = {
            function()
                return {
                    exe = "lua-format",
                    args = {
                        "--extra-sep-at-table-end",
                        "--single-quote-to-double-quote",
                    },
                    stdin = true,
                }
            end,
        },
    },
}
