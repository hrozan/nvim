local material = require 'material'

material.setup {
  lualine_style = 'stealth',
  disable = {
    background = true,
  },
}

vim.g.material_style = 'deep ocean'
vim.cmd 'colorscheme material'
