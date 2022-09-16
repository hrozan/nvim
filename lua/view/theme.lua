require('onedarkpro').setup {
  dark_theme = 'onedark_dark',
  styles = {
    functions = 'bold',
    variables = 'bold',
  },
  options = {
    bold = true,
    italic = true,
    cursorline = true,
    transparency = true,
  },
}

vim.cmd 'colorscheme onedarkpro'
