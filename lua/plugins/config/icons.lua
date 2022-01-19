local devicons = require('nvim-web-devicons')

local colors = {
  blue = '#4fa6ed'
}

devicons.setup {
  override = {
    lua = {
      icon = "",
      color = colors.blue,
      name = "lua",
    },
  },
}

