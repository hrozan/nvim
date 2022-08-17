local material = require 'material'

material.setup {
  lualine_style = 'stealth',
  disable = {
    background = true,
  },
  italics = {
    comments = true,
    functions = true,
  },
}

vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'
