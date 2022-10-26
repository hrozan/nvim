require('onedarkpro').setup {
  caching = true,
  options = {
    bold = true,
    italic = true,
    underline = true,
    undercurl = true,
    transparency = false,
  },
}

vim.cmd 'colorscheme onedarkpro'
